class AddColumnToStudent < ActiveRecord::Migration
  def change
    add_column :students, :age, :integer
  end
end
