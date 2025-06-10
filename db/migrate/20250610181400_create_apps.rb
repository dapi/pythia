class CreateApps < ActiveRecord::Migration[8.0]
  def change
    create_table :apps, id: :string do |t|
      t.string :repo_url, null: false

      t.timestamps
    end
    add_index :apps, :repo_url, unique: true
  end
end
