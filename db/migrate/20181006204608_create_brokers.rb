class CreateBrokers < ActiveRecord::Migration[5.2]
  def change
    create_table :brokers do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password
      t.string :profile_picture

      t.timestamps
    end
  end
end
