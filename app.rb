require 'sinatra'
require 'sinatra/reloader'

get '/' do
	@text = "Do you have a test for that?"
	@yes_link = '/write_test'
	@no_link = '/pass'
	erb :question
end

get '/write_test' do
	@text = "Write a test."
	@done_link = '/pass'
	erb :instruction
end

get '/pass' do
	@text = "Does the test pass?"
	@yes_link = '/refactor'
	@no_link = '/write_code'
	erb :question
end

get '/write_code' do
	@text = "Write just enough code for the test to pass."
	@done_link = '/pass'
	erb :instruction
end

get '/refactor' do
	@text = "Need to refactor?"
	@yes_link = '/do_refactor'
	@no_link = '/new_feature'
	erb :question
end

get '/do_refactor' do
	@text = "Refactor the code."
	@done_link = '/pass'
	erb :instruction
end

get '/new_feature' do
	@text = "Select a new feature to implement."
	@done_link = '/'
	erb :instruction
end
