class RemovePublishedIdFromBooks < ActiveRecord::Migration[7.1]
  def change
    remove_column :books, :published_id, :integer
  end
end
