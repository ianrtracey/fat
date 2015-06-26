class CreateHackApp < ActiveRecord::Migration
  def self.up
    create_table :hack_apps, force: true do |t|
      t.string :first_name,   		limit: 36
      t.string :last_name, 			limit: 36
      t.string :email,				null: false, default: "", limit: 64
      t.string :gender
      t.integer :age 			
      t.string :school
      t.boolean :needs_travel_reimbursement,	null: false, default: false
      t.boolean :is_first_time_hacker,			null: false, default: false
      t.text :why
      t.string :github
      t.string :linkedin
      t.string :website
      t.string :resume
      t.boolean :code_of_conduct
      t.string :status
      t.datetime :decision_date
      t.boolean :is_favorite
      t.text :nite
    end
  end

  def self.down
    drop_table :hack_apps
  end
end
