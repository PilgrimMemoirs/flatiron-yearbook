class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :desc
      t.string :link
      t.date   :completed

      t.timestamps
    end
  end
end
