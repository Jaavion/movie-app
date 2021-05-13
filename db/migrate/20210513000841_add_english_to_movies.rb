class AddEnglishToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :english, :boolean, default: true, column_options: {null: false}
  end
end
