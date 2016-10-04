require 'test_helper'

class FormBirsControllerTest < ActionController::TestCase
  setup do
    @form_bir = form_birs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:form_birs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create form_bir" do
    assert_difference('FormBir.count') do
      post :create, form_bir: { basvuran_id: @form_bir.basvuran_id, gonullu_id: @form_bir.gonullu_id, ilk_basvuru_tarihi: @form_bir.ilk_basvuru_tarihi, mc_siginaginda_kaliyor: @form_bir.mc_siginaginda_kaliyor, notlar: @form_bir.notlar, user_id: @form_bir.user_id }
    end

    assert_redirected_to form_bir_path(assigns(:form_bir))
  end

  test "should show form_bir" do
    get :show, id: @form_bir
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @form_bir
    assert_response :success
  end

  test "should update form_bir" do
    patch :update, id: @form_bir, form_bir: { basvuran_id: @form_bir.basvuran_id, gonullu_id: @form_bir.gonullu_id, ilk_basvuru_tarihi: @form_bir.ilk_basvuru_tarihi, mc_siginaginda_kaliyor: @form_bir.mc_siginaginda_kaliyor, notlar: @form_bir.notlar, user_id: @form_bir.user_id }
    assert_redirected_to form_bir_path(assigns(:form_bir))
  end

  test "should destroy form_bir" do
    assert_difference('FormBir.count', -1) do
      delete :destroy, id: @form_bir
    end

    assert_redirected_to form_birs_path
  end
end
