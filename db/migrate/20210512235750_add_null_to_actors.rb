class AddNullToActors < ActiveRecord::Migration[6.1]
  def change
    add_column :actors, :movies, :boolean, default: true, column_options: {null: false}
  end
end
