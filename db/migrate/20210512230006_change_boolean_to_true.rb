class ChangeBooleanToTrue < ActiveRecord::Migration[6.1]
  def change
    chanchchge_column :movies, :director, :boolean, default: :true
  end
end
