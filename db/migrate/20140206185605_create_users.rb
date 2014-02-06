class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :password
      t.integer :userType
      t.date :dob
      t.text :bio
      t.string :address1
      t.string :address2
      t.string :town
      t.string :county
      t.string :country
      t.string :postcode
      t.string :contactNumber

      t.timestamps
    end
  end
end
