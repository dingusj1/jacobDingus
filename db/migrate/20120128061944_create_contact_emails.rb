class CreateContactEmails < ActiveRecord::Migration
  def change
    create_table :contact_emails do |t|
      t.text :to
      t.text :name
      t.text :address
      t.text :subject
      t.text :body

      t.timestamps
    end
  end
end
