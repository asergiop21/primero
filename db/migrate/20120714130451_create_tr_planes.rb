class CreateTrPlanes < ActiveRecord::Migration
  def change
    create_table :tr_planes do |t|
      t.string :pl_nombre, :limit=>100
      t.decimal :pl_importe, :precision => 8, :scale => 2
      t.string :pl_veloc, :limit=>6
      t.boolean :pl_elim, :default=>false
      t.integer :us_idusuario

      t.timestamps
    end
  end
end
