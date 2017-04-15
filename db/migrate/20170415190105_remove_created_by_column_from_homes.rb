class RemoveCreatedByColumnFromHomes < ActiveRecord::Migration[5.0]
  def change
    remove_column :homes, :created_by 
  end
end
