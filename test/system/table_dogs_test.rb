require "application_system_test_case"

class TableDogsTest < ApplicationSystemTestCase
  setup do
    @table_dog = table_dogs(:one)
  end

  test "visiting the index" do
    visit table_dogs_url
    assert_selector "h1", text: "Table dogs"
  end

  test "should create table dog" do
    visit table_dogs_url
    click_on "New table dog"

    fill_in "Fecha nac", with: @table_dog.fecha_nac
    fill_in "Id dog", with: @table_dog.id_dog
    fill_in "Nombre", with: @table_dog.nombre
    fill_in "Peso", with: @table_dog.peso
    fill_in "Raza", with: @table_dog.raza
    fill_in "Vacunas", with: @table_dog.vacunas
    click_on "Create Table dog"

    assert_text "Table dog was successfully created"
    click_on "Back"
  end

  test "should update Table dog" do
    visit table_dog_url(@table_dog)
    click_on "Edit this table dog", match: :first

    fill_in "Fecha nac", with: @table_dog.fecha_nac
    fill_in "Id dog", with: @table_dog.id_dog
    fill_in "Nombre", with: @table_dog.nombre
    fill_in "Peso", with: @table_dog.peso
    fill_in "Raza", with: @table_dog.raza
    fill_in "Vacunas", with: @table_dog.vacunas
    click_on "Update Table dog"

    assert_text "Table dog was successfully updated"
    click_on "Back"
  end

  test "should destroy Table dog" do
    visit table_dog_url(@table_dog)
    click_on "Destroy this table dog", match: :first

    assert_text "Table dog was successfully destroyed"
  end
end
