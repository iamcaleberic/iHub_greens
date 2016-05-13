class AddAttachmentAvatarToGreens < ActiveRecord::Migration
  def self.up
    change_table :greens do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :greens, :avatar
  end
end
