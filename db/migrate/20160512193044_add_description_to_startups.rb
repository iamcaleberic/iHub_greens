class AddDescriptionToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :description, :text
  end
end
