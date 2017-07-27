class CreateLbxids < ActiveRecord::Migration
  def change
    create_table :lbxids do |t|
      t.text :lbxids
    end
  end
end
