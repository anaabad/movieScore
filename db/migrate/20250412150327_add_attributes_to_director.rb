class AddAttributesToDirector < ActiveRecord::Migration[8.0]
  def change
    add_column :directors, :nationality, :string
    add_column :directors, :birthday, :date
  end
end
