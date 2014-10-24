get '/' do
  # Look in app/views/index.erb
  @category = Category.all
  erb :index
end


get %r{/([\d]+)$} do
  category = Category.find(request.path[1..-1].to_i)
  @category_name = category.name
  @posts = category.posts
  erb :category
end