class RemoveFieldFromActors < ActiveRecord::Migration[6.1]
  def change
    remove_column :actors, :movie_id, :integer
  end
end
