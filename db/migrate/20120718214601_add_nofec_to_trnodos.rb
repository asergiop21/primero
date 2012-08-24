class AddNofecToTrnodos < ActiveRecord::Migration
  def change
    add_column :trnodos, :no_fec, :date
  end
end
