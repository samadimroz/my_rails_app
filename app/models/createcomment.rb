class Createcomment < ApplicationRecord
    def change
        create_table :comments do |t|
            t.string :content
            t.integer :commented_on_id
            t.string :commented_on_type
            t.references :user, null: false, foreign_key: true

            t.timestamps
        end
    end
end
