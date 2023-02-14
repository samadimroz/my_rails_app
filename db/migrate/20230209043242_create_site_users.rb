class CreateSiteUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :site_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
