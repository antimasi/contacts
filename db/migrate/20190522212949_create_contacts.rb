class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.date :dateOfBirth

      t.timestamps
    end
  end
end
