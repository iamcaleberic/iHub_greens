class AddFieldsToGreens < ActiveRecord::Migration
  def change
    add_column :greens, :name, :string
    add_column :greens, :contact, :string
    add_column :greens, :skills, :text
    add_column :greens, :is_male, :boolean
  end
end
