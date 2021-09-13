module BooksHelper
  def author_names_for_select
    array = Author.all.order(:name => :asc).map {|p| [ p.name ]}.uniq
    options_for_select array
  end
end
