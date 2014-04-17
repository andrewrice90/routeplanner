class SessionsController < ApplicationController
 
  def create
   user = User.find_by_email(params[:email])	
   if user && user.authenticate(params[:password])
   session[:user_id] = user.id
   redirect_to session[:return_to] || root_path
   else  	 		
	flash.now[:error] = "Invalid name/password combination."
	render 'new' 
    end
 end
 
 def destroy
	if signed_in?
		session[:user_id] = nil
	else
		flash[:notice] = "You need to sign in first"
	end
	redirect_to signin_path
 end
 def new 
 
 end

  def createAdmin
   admin = Admin.find_by_email(params[:email])  
   if admin && admin.authenticate(params[:password])  
    if admin.position == "Administrator"    
    session[:admin_id] = admin.id 
     flash.now[:error] = "Thank you for logging in"
     redirect_to pages_adminHome_path
   else       
  flash.now[:error] = "Invalid name/password combination."       
   render 'new'             
    end
 end



  
def destroyAdmin
  if adminsigned_in?
    session[:admin_id] = nil     
    else
    flash[:notice] = "You need to sign in first"      
    end
  redirect_to adminsignin_path
 end



 def newAdmin
  end

end

end

