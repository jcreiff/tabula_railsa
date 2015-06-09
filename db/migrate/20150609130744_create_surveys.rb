class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.boolean :chocolate
      t.boolean :rainbow
      t.boolean :puppy

      t.timestamps null: false
    end
  end
end
