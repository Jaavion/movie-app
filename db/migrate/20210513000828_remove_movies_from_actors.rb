class RemoveMoviesFromActors < ActiveRecord::Migration[6.1]
  def change
    remove_column :actors, :movies
  end
end
