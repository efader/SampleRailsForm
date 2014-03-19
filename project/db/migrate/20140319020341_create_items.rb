class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.string :bird_id
      t.text :owner

      t.timestamps
    end
  end
end
