namespace :bills do
  desc "Create bills for the current leases"
  task :create => :environment do
    if DateTime.now.beginning_of_month.to_date === Date.today
      Lease.active.each do |lease|
        date_due = DateTime.now + (lease.try(:days_rent_late).try(:days) || 7)
        bill = lease.bills.create!(date_issued: DateTime.now, user_id: lease.user.id, status: 'unpaid', date_due: date_due)
        bill.charges.create!(amount: lease.rent)
      end
    end
  end

  task :apply_charges => :environment do
    Bill.find_each do |bill|
      bill.charges.create!(amount: bill.lease.rent) if bill.charges.empty?
      bill.payments.create!(amount: bill.lease.rent) if bill.status == 'paid'
    end
  end
end