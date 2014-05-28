class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :encryptedpassword
      t.string :salt
      t.integer :admin

      t.timestamps
    end
  end
end
