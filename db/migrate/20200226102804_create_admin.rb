class CreateAdmin < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :username
      t.timestamps
    end
  end
end
