class CreateWords < ActiveRecord::Migration
  def self.up
    create_table :words do |t|
      t.string :japanese
      t.string :reading
      t.text :definition
      t.string :category
      t.text :comments

      t.timestamps
    end
  end

  def self.down
    drop_table :words
  end
end
