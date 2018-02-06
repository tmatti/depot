class StoreController < ApplicationController
  include ViewCount
  before_action :increment_page_view
  def index
    @products = Product.order(:title)
  end
end
