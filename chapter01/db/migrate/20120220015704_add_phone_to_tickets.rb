class AddPhoneToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :phone, :string

  end
end
