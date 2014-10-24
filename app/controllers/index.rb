get '/' do
  # Look in app/views/index.erb
    @category = Category.all.map{|item| item.name}
  erb :index
end
