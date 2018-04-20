class CreateBrews < ActiveRecord::Migration[5.2]
  def change
    create_table :brews do |t|
      t.column :name, :string
      t.column :price, :integer
      t.column :state, :string

      t.timestamps 
    end
  end
end
