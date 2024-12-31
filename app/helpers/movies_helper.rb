module MoviesHelper
  def sort_indicator(column)
    return '' unless params[:sort] == column
    params[:direction] == 'asc' ? '▲' : '▼'
  end
  
  def next_sort_direction(column)
    if params[:sort] != column
      'asc'
    else
      params[:direction] == 'asc' ? 'desc' : 'asc'
    end
  end
end