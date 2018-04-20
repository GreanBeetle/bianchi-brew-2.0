class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :brew_id, :integer
      t.column :author, :string
      t.column :content, :string 
      t.column :rating, :integer

      t.timestamps
    end
  end
end
