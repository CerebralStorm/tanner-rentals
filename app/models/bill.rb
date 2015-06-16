class Bill < ActiveRecord::Base
  belongs_to :user
  belongs_to :lease

  has_many :payments
  has_many :credits
  has_many :charges

  validates :status, inclusion: { in: %w(paid unpaid) }

  def payment_total
    payments.sum(&:amount)
  end

  def credit_total
    credits.sum(&:amount)
  end

  def charge_total
    charges.sum(&:amount)
  end

  def balance
    charge_total - (payment_total + credit_total)
  end

  def balance_in_cents
    (balance * 100).to_i
  end

  def can_pay?
    self.status != "paid"
  end
end
