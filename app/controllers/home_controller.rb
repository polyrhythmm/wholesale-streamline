class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, :params => {:limit => 10})
    @shop = ShopifyAPI::Shop.current
    
    if Owner.where(shop_id: @shop.id).length == 0
      Owner.create!(shop_id: @shop.id,
                    name: @shop.name,
                    email: @shop.email,
                    domain: @shop.domain,
                    province: @shop.province,
                    country: @shop.country,
                    address1: @shop.address1,
                    zip: @shop.zip,
                    city: @shop.city,
                    source: @shop.source,
                    phone: @shop.phone,
                    customer_email: @shop.customer_email,
                    primary_location_id: @shop.primary_location_id,
                    primary_locale: @shop.primary_locale,
                    address2: @shop.address2,
                    country_code: @shop.country_code,
                    country_name: @shop.country_name,
                    currency: @shop.currency,
                    timezone: @shop.timezone,
                    shop_owner: @shop.shop_owner,
                    province_code: @shop.province_code,
                    myshopify_domain: @shop.myshopify_domain,
                    has_storefront: @shop.has_storefront
                    
                    )
      @products.each do |product|
        Product.create!(owner_id: @shop.id,
                        product_id: product.id,
                        title: product.title,
                        body_html: product.body_html,
                        vendor: product.vendor,
                        product_type: product.product_type,
                        handle: product.handle,
                        published_scope: product.published_scope,
                        tags: product.tags)
                        
      product.variants.each do |variant|
        Variant.create!(variant_id: variant.id,
                        title: variant.title,
                        price: variant.price,
                        sku: variant.sku,
                        position: variant.position,
                        inventory_policy: variant.inventory_policy,
                        fulfillment_service: variant.fulfillment_service,
                        inventory_management: variant.inventory_management,
                        option1: variant.option1,
                        option2: variant.option2,
                        option3: variant.option3,
                        taxable: variant.taxable,
                        barcode: variant.barcode,
                        grams: variant.grams,
                        inventory_quantity: variant.inventory_quantity,
                        requires_shipping: variant.requires_shipping,
                        shop_id: @shop.id,
                        product_id: product.id)
       end
       
        product.options.each do |option|
          Option.create!(option_id: option.id,
                         name: option.name,
                         position: option.position, 
                         shop_id: @shop.id,
                         product_id: product.id)
        end
      end
    end
  end
end
