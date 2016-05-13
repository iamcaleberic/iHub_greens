class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :description
      t.string :organization
      t.date :timeline
      t.string :reward

      t.timestamps null: false
    end
  end
end
