class AddAttachmentAvatarToChallenges < ActiveRecord::Migration
  def self.up
    change_table :challenges do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :challenges, :avatar
  end
end
