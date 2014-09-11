require 'test_helper'

class InformetecnicosControllerTest < ActionController::TestCase
  setup do
    @informetecnico = informetecnicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informetecnicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informetecnico" do
    assert_difference('Informetecnico.count') do
      post :create, informetecnico: { cedulanit: @informetecnico.cedulanit, descripcion: @informetecnico.descripcion, direccion: @informetecnico.direccion, dispositivo: @informetecnico.dispositivo, facturable: @informetecnico.facturable, fechaingreso: @informetecnico.fechaingreso, fechasalida: @informetecnico.fechasalida, garantia: @informetecnico.garantia, hora: @informetecnico.hora, horasalida: @informetecnico.horasalida, marcamodelo: @informetecnico.marcamodelo, nombreempresa: @informetecnico.nombreempresa, nombretecnico: @informetecnico.nombretecnico, nombreusuario: @informetecnico.nombreusuario, problema_id: @informetecnico.problema_id, serialid: @informetecnico.serialid, servicio: @informetecnico.servicio, telefono: @informetecnico.telefono, valor: @informetecnico.valor }
    end

    assert_redirected_to informetecnico_path(assigns(:informetecnico))
  end

  test "should show informetecnico" do
    get :show, id: @informetecnico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informetecnico
    assert_response :success
  end

  test "should update informetecnico" do
    patch :update, id: @informetecnico, informetecnico: { cedulanit: @informetecnico.cedulanit, descripcion: @informetecnico.descripcion, direccion: @informetecnico.direccion, dispositivo: @informetecnico.dispositivo, facturable: @informetecnico.facturable, fechaingreso: @informetecnico.fechaingreso, fechasalida: @informetecnico.fechasalida, garantia: @informetecnico.garantia, hora: @informetecnico.hora, horasalida: @informetecnico.horasalida, marcamodelo: @informetecnico.marcamodelo, nombreempresa: @informetecnico.nombreempresa, nombretecnico: @informetecnico.nombretecnico, nombreusuario: @informetecnico.nombreusuario, problema_id: @informetecnico.problema_id, serialid: @informetecnico.serialid, servicio: @informetecnico.servicio, telefono: @informetecnico.telefono, valor: @informetecnico.valor }
    assert_redirected_to informetecnico_path(assigns(:informetecnico))
  end

  test "should destroy informetecnico" do
    assert_difference('Informetecnico.count', -1) do
      delete :destroy, id: @informetecnico
    end

    assert_redirected_to informetecnicos_path
  end
end
