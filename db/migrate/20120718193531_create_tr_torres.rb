class CreateTrTorres < ActiveRecord::Migration
  def change
    create_table :tr_torres do |t|
      t.string :tr_nombre
      t.integer :tr_localidad
      t.string :tr_respon

      t.timestamps
    end
  end
end
