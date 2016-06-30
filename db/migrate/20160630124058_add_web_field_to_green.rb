class AddWebFieldToGreen < ActiveRecord::Migration
  def change
    add_column :greens, :web, :string
  end
end
