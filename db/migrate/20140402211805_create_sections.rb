class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.column :title, :string
    end

    add_column :lessons, :section_id, :integer
  end
end
