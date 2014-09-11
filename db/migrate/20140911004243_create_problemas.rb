class CreateProblemas < ActiveRecord::Migration
  def change
    create_table :problemas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
