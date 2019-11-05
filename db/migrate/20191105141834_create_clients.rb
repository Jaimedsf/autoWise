class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :First_Name
      t.string :Last_Name
      t.string :Email
      t.string :Phone_Number
      t.string :Contact_Owner
      t.date :Last_Activity_Date
      t.string :Lead_Status
      t.integer :Associated_Company_ID
      t.string :Associated_Company
      t.string :document
      t.references :user, null: false, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
