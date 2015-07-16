class CreateTeachersClasses < ActiveRecord::Migration
  def change
    create_table :teachers_classes do |t|
      t.belongs_to :teacher, index: true
      t.belongs_to :class, index: true
    end
  end
end
