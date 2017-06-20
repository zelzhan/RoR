class CreateUsers < ActiveRecord::Migration[5.0]
  before_save	{	self.email	=	email.downcase	}
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
