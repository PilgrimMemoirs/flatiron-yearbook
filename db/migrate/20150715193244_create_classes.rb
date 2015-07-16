class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :name
      t.string :desc
      t.string :google_drive

      t.string :code
      t.string :passcode

      t.timestamps
    end
  end
end
