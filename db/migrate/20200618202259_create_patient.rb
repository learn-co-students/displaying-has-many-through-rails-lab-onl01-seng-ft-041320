class CreatePatient < ActiveRecord::Migration[5.0]

  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
  
end
