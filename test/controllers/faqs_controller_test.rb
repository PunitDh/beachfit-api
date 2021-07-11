require "test_helper"

class FaqsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faq = faqs(:one)
  end

  test "should get index" do
    get faqs_url, as: :json
    assert_response :success
  end

  test "should create faq" do
    assert_difference('Faq.count') do
      post faqs_url, params: { faq: { user_id: @faq.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show faq" do
    get faq_url(@faq), as: :json
    assert_response :success
  end

  test "should update faq" do
    patch faq_url(@faq), params: { faq: { user_id: @faq.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy faq" do
    assert_difference('Faq.count', -1) do
      delete faq_url(@faq), as: :json
    end

    assert_response 204
  end
end
