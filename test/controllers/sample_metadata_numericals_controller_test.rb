require 'test_helper'

class SampleMetadataNumericalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sample_metadata_numerical = sample_metadata_numericals(:one)
  end

  test "should get index" do
    get sample_metadata_numericals_url
    assert_response :success
  end

  test "should get new" do
    get new_sample_metadata_numerical_url
    assert_response :success
  end

  test "should create sample_metadata_numerical" do
    assert_difference('SampleMetadataNumerical.count') do
      post sample_metadata_numericals_url, params: { sample_metadata_numerical: { predicate_numerical: @sample_metadata_numerical.predicate_numerical, sample_id: @sample_metadata_numerical.sample_id, value: @sample_metadata_numerical.value } }
    end

    assert_redirected_to sample_metadata_numerical_url(SampleMetadataNumerical.last)
  end

  test "should show sample_metadata_numerical" do
    get sample_metadata_numerical_url(@sample_metadata_numerical)
    assert_response :success
  end

  test "should get edit" do
    get edit_sample_metadata_numerical_url(@sample_metadata_numerical)
    assert_response :success
  end

  test "should update sample_metadata_numerical" do
    patch sample_metadata_numerical_url(@sample_metadata_numerical), params: { sample_metadata_numerical: { predicate_numerical: @sample_metadata_numerical.predicate_numerical, sample_id: @sample_metadata_numerical.sample_id, value: @sample_metadata_numerical.value } }
    assert_redirected_to sample_metadata_numerical_url(@sample_metadata_numerical)
  end

  test "should destroy sample_metadata_numerical" do
    assert_difference('SampleMetadataNumerical.count', -1) do
      delete sample_metadata_numerical_url(@sample_metadata_numerical)
    end

    assert_redirected_to sample_metadata_numericals_url
  end
end
