class AddDescriptionToLbxids < ActiveRecord::Migration
  def change
 #   add_column :lbxids, :lbxids, :text 
    add_column :lbxids, :created_at, :datetime
    add_column :lbxids, :updated_at, :datetime
  end
end
