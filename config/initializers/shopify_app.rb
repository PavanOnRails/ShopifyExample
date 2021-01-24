ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "8bfeb83b61a8d883c2d931600b438cc4"
  config.secret = "e4bc5ae2647d81df89e7c85fcc443f98"
  config.scope = "read_products" # Consult this page for more scope options:
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
  config.webhooks = [
    {topic: 'carts/update', address: 'https://evening-cliffs-94397.herokuapp.com/webhooks/carts_update'}
  ]
end
