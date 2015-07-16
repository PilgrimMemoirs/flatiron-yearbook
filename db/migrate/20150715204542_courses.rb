class Courses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :desc

      t.string :code
      t.string :passcode

      t.timestamps
    end 
  end
end
