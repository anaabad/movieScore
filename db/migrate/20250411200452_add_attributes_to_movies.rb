class AddAttributesToMovies < ActiveRecord::Migration[8.0]
  def change
    add_column :movies, :releaseDate, :string
    add_column :movies, :genre, :string
    add_column :movies, :duration, :integer
    add_reference :movies, :director
  end
end
