require "test_helper"

class TableDogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table_dog = table_dogs(:one)
  end

  test "should get index" do
    get table_dogs_url
    assert_response :success
  end

  test "should get new" do
    get new_table_dog_url
    assert_response :success
  end

  test "should create table_dog" do
    assert_difference("TableDog.count") do
      post table_dogs_url, params: { table_dog: { fecha_nac: @table_dog.fecha_nac, id_dog: @table_dog.id_dog, nombre: @table_dog.nombre, peso: @table_dog.peso, raza: @table_dog.raza, vacunas: @table_dog.vacunas } }
    end

    assert_redirected_to table_dog_url(TableDog.last)
  end

  test "should show table_dog" do
    get table_dog_url(@table_dog)
    assert_response :success
  end

  test "should get edit" do
    get edit_table_dog_url(@table_dog)
    assert_response :success
  end

  test "should update table_dog" do
    patch table_dog_url(@table_dog), params: { table_dog: { fecha_nac: @table_dog.fecha_nac, id_dog: @table_dog.id_dog, nombre: @table_dog.nombre, peso: @table_dog.peso, raza: @table_dog.raza, vacunas: @table_dog.vacunas } }
    assert_redirected_to table_dog_url(@table_dog)
  end

  test "should destroy table_dog" do
    assert_difference("TableDog.count", -1) do
      delete table_dog_url(@table_dog)
    end

    assert_redirected_to table_dogs_url
  end
end
