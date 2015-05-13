class CreateFilmVues < ActiveRecord::Migration
  def change
    create_table :film_vues do |t|
      t.integer :id_utilisateur
      t.integer :id_film

      t.timestamps null: false
    end
  end
end
