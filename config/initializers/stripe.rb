require "stripe"

Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_HhO00Nx5Erc8rPyBRGMfhNoC'],
  :secret_key      => ENV['sk_test_1kTxBNShxMhrXMQh6ngWPp8h']
}

Stripe.api_key = Rails.configuration.stripe[:sk_test_1kTxBNShxMhrXMQh6ngWPp8h]
