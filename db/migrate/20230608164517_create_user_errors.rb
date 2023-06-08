class CreateUserErrors < ActiveRecord::Migration[7.0]
  def change
    create_table :user_errors do |t|
      t.references :user, null: false, foreign_key: true
      t.references :error, null: false, foreign_key: true
      t.string :note
      t.date :date

      t.timestamps
    end
  end
end
