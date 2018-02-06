module ViewCount
  private
  def increment_page_view
    if session[:store_view_counter]
      @page_views = session[:store_view_counter] + 1
    else
      @page_views = 1
    end
    session[:store_view_counter] = @page_views
  end
end