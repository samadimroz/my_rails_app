class CreateCreatecomments < ActiveRecord::Migration[6.1]
  def change
    create_table :createcomments do |t|

      t.timestamps
    end
  end
end
