class AddTagsToWords < ActiveRecord::Migration
  def self.up
    add_column :words, :tags, :string, :default => ''
  end

  def self.down
    remove_column :words, :tags
  end
end
