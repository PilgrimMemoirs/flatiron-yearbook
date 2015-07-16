class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.belongs_to :class, index: true
      t.belongs_to :project, index: true
      t.string :first_name
      t.string :last_name
      t.string :twitter
      t.string :facebook
      t.string :email
      t.string :github
      t.string :site

      t.timestamps
    end
  end
end
