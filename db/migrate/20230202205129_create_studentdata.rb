class CreateStudentdata < ActiveRecord::Migration[6.1]
  def change
    create_table :studentdata do |t|
      t.string :name
      t.integer :age
      t.string :image
      t.string :address
      t.integer :rno
      t.integer :mobile
      t.string :course

      t.timestamps
    end
  end
end
