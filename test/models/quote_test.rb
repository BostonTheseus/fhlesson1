require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

	test "unique_tag" do
		quote = FactoryGirl.create(:quote)
		get :show, :id => quote.id
		quote = Quote.create(:author => 'James Joyce', :saying => 'Yolo!')
		expected = 'JJ#' + quote.id.to_s
		actual = quote.unique_tag
		assert_equal expected, actual

	end

end
