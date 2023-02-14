class CreateLibraries < ActiveRecord::Migration[6.1]
  def change
    create_table :libraries do |t|
      t.string :bookname
      t.string :authorname
      t.integer :isbn
      t.integer :price
      t.integer :year
      t.string :publisher

      t.timestamps
    end
  end
end
