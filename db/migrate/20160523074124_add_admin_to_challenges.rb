class AddAdminToChallenges < ActiveRecord::Migration
  def change
    add_reference :challenges, :admin, index: true, foreign_key: true
  end
end
