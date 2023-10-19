class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|
      t.string :author
      t.string :name
      t.decimal :rating

      t.timestamps
    end
  end
end