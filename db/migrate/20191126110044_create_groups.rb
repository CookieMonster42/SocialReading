class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.references :user, foreign_key: true
      t.references :language, foreign_key: true
      t.references :book, foreign_key: true
      t.string :name
      t.text :host_message
      t.datetime :date
      t.string :location

      t.timestamps
    end
  end
end
