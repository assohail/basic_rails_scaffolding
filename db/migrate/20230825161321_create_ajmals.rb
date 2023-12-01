class CreateAjmals < ActiveRecord::Migration[7.0]
  def change
    create_table :ajmals do |t|
      t.string :mobile
      t.boolean :foozbol

      t.timestamps
    end
  end
end
