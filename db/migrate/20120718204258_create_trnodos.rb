class CreateTrnodos < ActiveRecord::Migration
  def change
    create_table :trnodos do |t|
      t.string :no_nombre
      t.string :no_ip
      t.integer :no_idtorres
      t.integer :no_iduser

      t.timestamps
    end
  end
end
