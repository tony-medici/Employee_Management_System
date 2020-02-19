class CreateEmployee < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :fullname
      t.integer :age
      t.string :gender
      t.string :marital_status
      t.string :state
      t.string :lga
      t.text :address
      t.integer :phone_number
      t.datetime :start_date
      t.datetime :termination_date
    end
  end
end
