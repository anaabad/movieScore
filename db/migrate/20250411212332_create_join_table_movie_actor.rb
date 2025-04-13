class CreateJoinTableMovieActor < ActiveRecord::Migration[8.0]
  def change
    create_table :actor_movies do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :actor, null: false, foreign_key: true
    end
  end
end
