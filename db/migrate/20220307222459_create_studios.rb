class CreateStudios < ActiveRecord::Migration[6.1]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :address
      t.references :owner, null: false, foreign_key: { to_table: :users } # owners

      t.timestamps
    end
  end
end
