module Admin::MembersHelper
  
  def sort_orderm(column, title)
    css_class = column == sort_columnm ? "current #{sort_direction}" : nil
    direction = column == sort_columnm && sort_direction == 'desc' ? 'asc' : 'desc'
    link_to title, {sort: column, direction: direction}.merge(), class: "sort_header #{css_class}"
  end  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
  end

  def sort_columnm
    Member.column_names.include?(params[:sort]) ? params[:sort] : 'created_at'
  end
  
end
