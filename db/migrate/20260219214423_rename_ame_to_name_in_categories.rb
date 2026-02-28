class RenameAmeToNameInCategories < ActiveRecord::Migration[7.2]
  def change
    rename_column :categories, :ame, :name
  end
end
