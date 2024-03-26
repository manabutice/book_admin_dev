class CreateBookAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table :book_authors do |t|
      t.references :book, foreign_key: true
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
