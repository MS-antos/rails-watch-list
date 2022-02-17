class AddMovieToList < ActiveRecord::Migration[6.1]
  def change
    add_reference :lists, :movie, null: false, foreign_key: true
  end
end
