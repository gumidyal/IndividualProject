class CreateProjectPages < ActiveRecord::Migration[5.1]
  def change
    create_table :project_pages do |t|
      t.string :content
      t.references :individualproject, foreign_key: true

      t.timestamps
    end
  end
end
