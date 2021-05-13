class ChangeClassName < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :english, :english1
    rename_column :movies, :director, :english
    rename_column :movies, :english1, :director
  end
end
