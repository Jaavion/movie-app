class ChangeDirectorToBoolean < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :director, "boolean USING CAST(director as boolean)"
  end
end
