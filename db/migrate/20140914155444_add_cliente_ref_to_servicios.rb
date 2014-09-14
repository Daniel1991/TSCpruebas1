class AddClienteRefToServicios < ActiveRecord::Migration
  def change
    add_reference :servicios, :cliente, index: true
  end
end
