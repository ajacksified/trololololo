class CreateTrolls < ActiveRecord::Migration
  def change
    create_table :trolls do |t|
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
