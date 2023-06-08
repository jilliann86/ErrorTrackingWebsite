class CreateErrors < ActiveRecord::Migration[7.0]
  def change
    create_table :errors do |t|
      t.string :name
      t.integer :severity

      t.timestamps
    end
  end
end
