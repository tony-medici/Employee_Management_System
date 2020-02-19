class AddEmailToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :email, :string
    add_column :employees, :created_at, :datetime
    add_column :employees, :updated_at, :datetime
  end
end
