class CreateStages < ActiveRecord::Migration[8.0]
  def change
    create_table :stages, id: :string do |t|
      t.timestamps
    end
  end
end
