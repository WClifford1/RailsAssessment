Rails.configuration.stripe = {
    :publishable_key => ENV['pk_test_VusyrkBWBUZap422qh8wkAsL00dkbBeRdG'],
    :secret_key      => ENV['sk_test_5VriwPJF8EScOW0VlkIW36p200X2SvMzbP']
  }
  
  Stripe.api_key = Rails.configuration.stripe[:sk_test_5VriwPJF8EScOW0VlkIW36p200X2SvMzbP]