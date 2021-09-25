module Admin::OrdersHelper
  
  def sort_ordero(column, title)
    css_class = column == sort_columno ? "current #{sort_direction}" : nil
    direction = column == sort_columno && sort_direction == 'desc' ? 'asc' : 'desc'
    link_to title, {sort: column, direction: direction}.merge(), class: "sort_header #{css_class}"
  end  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  end

  def sort_columno
    Order.column_names.include?(params[:sort]) ? params[:sort] : 'created_at'
  end
end
