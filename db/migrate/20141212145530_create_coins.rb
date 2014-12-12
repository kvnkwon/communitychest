class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.references :user
      t.string :content

      t.timestamps
    end
  end
end
