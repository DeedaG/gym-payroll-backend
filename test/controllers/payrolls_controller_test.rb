require 'test_helper'

class PayrollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payroll = payrolls(:one)
  end

  test "should get index" do
    get payrolls_url, as: :json
    assert_response :success
  end

  test "should create payroll" do
    assert_difference('Payroll.count') do
      post payrolls_url, params: { payroll: { payPeriod: @payroll.payPeriod, total: @payroll.total } }, as: :json
    end

    assert_response 201
  end

  test "should show payroll" do
    get payroll_url(@payroll), as: :json
    assert_response :success
  end

  test "should update payroll" do
    patch payroll_url(@payroll), params: { payroll: { payPeriod: @payroll.payPeriod, total: @payroll.total } }, as: :json
    assert_response 200
  end

  test "should destroy payroll" do
    assert_difference('Payroll.count', -1) do
      delete payroll_url(@payroll), as: :json
    end

    assert_response 204
  end
end
