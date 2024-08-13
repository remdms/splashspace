class FixBookingStatusColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :bookings, :confirmed, :status
  end
end
