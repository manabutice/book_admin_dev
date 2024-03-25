class AddDetailsToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :name, :string
    add_column :books, :published_on, :date
    add_column :books, :price, :integer
  end
end
