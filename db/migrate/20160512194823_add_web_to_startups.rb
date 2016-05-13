class AddWebToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :web, :string
  end
end
