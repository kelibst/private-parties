class CreatePartiesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :parties_tables do |t|
      t.string :title
      t.text :description
      t.date :date
      t.string :location
    end
  end
end
