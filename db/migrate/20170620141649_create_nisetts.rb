class CreateNisetts < ActiveRecord::Migration
  def change
    create_table :nisetts do |t|
      t.string:content

      t.timestamps null: false
    end
  end
end
