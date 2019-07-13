require 'sinatra'
require 'sinatra/reloader' if development?

#Define routes

# 404 Error!
error Sinatra::NotFound do
	@title = "Norwid's not here..."
  erb :oops, :layout => :page404
  #This will render views/oops.erb embedded in the 
  #views/page404.erb (default is views/layout.erb, if it exists).
end

get '/' do
	@title = "Cyprian Norwid - Poet, Artist, Visionary" 
#From - https://gist.github.com/jamesmartin/51bcaf4b70cb0653cfbb
  erb :'home'
end

get '/bio' do
	@title = "Biography of Cyprian Norwid"
  erb :'bio'
end

get '/poems' do
	@title = "Selected Poems of Cyprian Norwid"
  erb :'poems'
end

#static routes in this example
get '/1' do
  @title = "DAJ MI WSTĄŻKĘ BŁĘKITNĄ"
  erb :'1'
end

get '/2' do
  @title = "MOJA PIOSNKA II"
  erb :'2'
end


get '/3' do
  @title = "AERUMNARUM PLENUS"
  erb :'3'
end


get '/4' do
  @title = "DO OBYWATELA JOHNA BROWN"
  erb :'4'
end


get '/5' do
  @title = "DO MEGO BRATA LUDWIKA"
  erb :'5'
end

get '/6' do
  @title = "EPOS-NASZA"
  erb :'6'
end
#static routes in this example END

get '/music' do
	@title = "Poems set to Music"
  erb :'music'
end

get '/art' do
	@title = "Norwid's Paintings & Drawings"
  erb :'art'
end
