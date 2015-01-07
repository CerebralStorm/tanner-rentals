Rails.configuration.stripe = {
  :publishable_key => (ENV['PUBLISHABLE_KEY'] || "pk_test_Jup0BbkVFY97TBdTMkyiego5"),
  :secret_key      => (ENV['SECRET_KEY'] || "sk_test_l23K4zsHV5Ay8ogyQhiDJIyR")
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]