class CreateCalclates < ActiveRecord::Migration[7.1]
  def change
    create_table :calclates do |t|
      t.integer :weight
      t.integer :activity_time

      t.timestamps
    end
  end
end
