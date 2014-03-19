class CreateTypes < ActiveRecord::Migration
  def change
    create_table :birds do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
