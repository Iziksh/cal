class AddEmployeeToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :employee, :integer
  end
end
