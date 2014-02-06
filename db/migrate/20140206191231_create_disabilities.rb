class CreateDisabilities < ActiveRecord::Migration
  def change
    create_table :disabilities do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
