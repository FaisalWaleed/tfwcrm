class RenameClassesToStandrdFromStd < ActiveRecord::Migration
  def change
  	remove_column :std, :classes
  	add_column :std, :standrd_id, :integer
  end
end
