class CreateTelephoneDirs < ActiveRecord::Migration[6.1]
  def change
    create_table :telephone_dirs do |t|
      t.string :firstname
      t.string :lastname
      t.integer :phone
      t.string :emailid
      t.integer :doorno
      t.string :street
      t.string :area
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
