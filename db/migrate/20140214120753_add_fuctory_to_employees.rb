class AddFuctoryToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :factory, :string
  end
end
