class CreateAppStages < ActiveRecord::Migration[8.0]
  def change
    create_table :app_stages, primary_key: %i[app_id stage_id] do |t|
      t.references :app, null: false, foreign_key: true, null: false, type: :string
      t.references :stage, null: false, foreign_key: true, null: false, type: :string
      t.string :version

      t.timestamps
    end
  end
end
