require 'test_helper'

class PredicateNumericalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @predicate_numerical = predicate_numericals(:one)
  end

  test "should get index" do
    get predicate_numericals_url
    assert_response :success
  end

  test "should get new" do
    get new_predicate_numerical_url
    assert_response :success
  end

  test "should create predicate_numerical" do
    assert_difference('PredicateNumerical.count') do
      post predicate_numericals_url, params: { predicate_numerical: { max: @predicate_numerical.max, min: @predicate_numerical.min, name: @predicate_numerical.name, sample_metadata_numerical_id: @predicate_numerical.sample_metadata_numerical_id, unit: @predicate_numerical.unit } }
    end

    assert_redirected_to predicate_numerical_url(PredicateNumerical.last)
  end

  test "should show predicate_numerical" do
    get predicate_numerical_url(@predicate_numerical)
    assert_response :success
  end

  test "should get edit" do
    get edit_predicate_numerical_url(@predicate_numerical)
    assert_response :success
  end

  test "should update predicate_numerical" do
    patch predicate_numerical_url(@predicate_numerical), params: { predicate_numerical: { max: @predicate_numerical.max, min: @predicate_numerical.min, name: @predicate_numerical.name, sample_metadata_numerical_id: @predicate_numerical.sample_metadata_numerical_id, unit: @predicate_numerical.unit } }
    assert_redirected_to predicate_numerical_url(@predicate_numerical)
  end

  test "should destroy predicate_numerical" do
    assert_difference('PredicateNumerical.count', -1) do
      delete predicate_numerical_url(@predicate_numerical)
    end

    assert_redirected_to predicate_numericals_url
  end
end
