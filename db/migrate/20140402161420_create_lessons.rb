class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.column :name, :string
      t.column :text, :text
      t.column :number, :integer
    end
  end
end
