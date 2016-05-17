class AddAttachmentAvatarToStartups < ActiveRecord::Migration
  def self.up
    change_table :startups do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :startups, :avatar
  end
end
