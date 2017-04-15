class ChangeZipcodeToString < ActiveRecord::Migration[5.0]
  def change
    change_column :homes, :zipcode, :string
  end
end
