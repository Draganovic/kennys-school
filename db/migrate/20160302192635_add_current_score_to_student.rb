class AddCurrentScoreToStudent < ActiveRecord::Migration
  def change
    add_column :students, :current_score, :integer, default: 0
  end
end
