class CreateTrlocalidads < ActiveRecord::Migration
  def change
    create_table :trlocalidads do |t|
      t.string :lo_nombre
      t.string :lo_cp, :limit=> 100
      t.string :lo_dpto
      t.string :lo_provincia

      t.timestamps
    end
  end
end
