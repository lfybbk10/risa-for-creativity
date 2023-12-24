class AddContentIdComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :content_id, :bigint
  end
end

