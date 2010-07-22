class DeleteCategoryAndExpressionFromMeaning < ActiveRecord::Migration
  def self.up
    rename_column :meanings, :text, :polish
    remove_column :meanings, :category
    remove_column :meanings, :expression
  end

  def self.down
    rename_column :meanings, :polish, :text
    add_column    :meanings, :category, :string
    add_column    :meanings, :expression, :string
  end
end
