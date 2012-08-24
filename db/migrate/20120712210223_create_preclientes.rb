class CreatePreclientes < ActiveRecord::Migration
  def change
    create_table :preclientes do |t|
      t.string :pr_apellido
      t.string :pr_nombre
      t.string :pr_domicilio

      t.timestamps
    end
  end
end
