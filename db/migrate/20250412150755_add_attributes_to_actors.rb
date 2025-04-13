class AddAttributesToActors < ActiveRecord::Migration[8.0]
  def change
    add_column :actors, :nationality, :string
    add_column :actors, :birthday, :date
  end
end
