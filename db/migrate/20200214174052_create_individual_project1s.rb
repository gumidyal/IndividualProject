class CreateClassNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :Class Notes do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
