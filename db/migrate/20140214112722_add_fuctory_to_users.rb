class AddFuctoryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :factory, :string
  end
end
