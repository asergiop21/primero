class CreateOptimus < ActiveRecord::Migration
  def change
    create_table :optimus do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
