get '/' do 
  
  erb :index
end



#-------Teacher/Admin Area-------#
#LOGIN
get '/admin' do

  erb :admin
end

#LOGIN REQUEST
post '/sessions' do
  user = User.authenticate(params[:user][:name], params[:user][:password])
  if user
    session[:user_id] = user.id
    redirect '/students'
  else
    @error = "Invalid email or password"
    erb :'/admin'
  end
end

#LOGOUT
delete '/sessions/:id' do

  session.clear
  redirect :'/sessions/new'
end

#SIGNUP PAGE
get '/users/new' do
  erb :"/users/new"
end

#SIGNUP REQUEST
post '/users' do
  @user = User.create(params[:user])
  session[:user_id] = @user.id
  redirect '/students'
end




#--------Students----------#


  #SHOW A STUDENT
get '/students/:id' do
  @student = Dog.find(params[:id])
  erb :'/students/show'
end


  #CREATE NEW STUDENT
get '/students/new' do
  erb :'students/show'
end

post '/students' do
  @dog = Student.new(params[:student])
  erb :'students/show'
end

  #EDIT STUDENT
put '/students/:id/edit' do
  @student = Student.find(params[:id])
  erb :'/students/edit'
end

put '/students/:id' do
  student = Student.find(params[:id])
  student.update(params[:student])
end

  #REMOVE A STUDENT
delete '/students/:id' do
  @student = Student.find(params[:id])
  @student.destroy

  redirect '/students'
end