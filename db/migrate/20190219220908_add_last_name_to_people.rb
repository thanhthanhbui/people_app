class AddLastNameToPeople < ActiveRecord::Migration[5.2]
  def change
    add_column :people, :last_name, :string
  end
end
