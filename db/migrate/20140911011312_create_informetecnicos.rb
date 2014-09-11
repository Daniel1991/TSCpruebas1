class CreateInformetecnicos < ActiveRecord::Migration
  def change
    create_table :informetecnicos do |t|
      t.date :fechaingreso
      t.time :hora
      t.string :cedulanit
      t.string :nombreempresa
      t.string :telefono
      t.string :direccion
      t.string :nombretecnico
      t.boolean :garantia
      t.boolean :servicio
      t.boolean :facturable
      t.string :valor
      t.string :dispositivo
      t.string :marcamodelo
      t.string :serialid
      t.text :descripcion
      t.date :fechasalida
      t.time :horasalida
      t.string :nombreusuario
      t.references :problema, index: true

      t.timestamps
    end
  end
end
