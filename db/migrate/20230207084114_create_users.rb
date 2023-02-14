class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.references :company, null: false, foreign_key: true
      t.integer :yearjoined

      t.timestamps
    end
  end
end
