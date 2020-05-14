class WainsController < ApplicationController

  before_action :set_post, only: [:new,:create, :update,:edit,:show]

  def index
 
    @wains = Wain.where(user_id: current_user.id)
  
  end
    def new
    
        @wain = current_user.wains.build
      end


      def create
        @wain = current_user.wains.build(wain_params)
        @wain.save
          redirect_to wains_path
      end

      def destroy
       
        @wain=Wain.find(params[:id])
        @wain.declass UsersPageController < ApplicationController
        def index
            @users=User.all
          end
     
          def show
           
            @user = User.find(params[:id])
            @boughts = Bought.where(user_id: @user.id)
          end
     
     
       def destroy
           if  current_user.roll =="admin" || current_user.username == @user.username
            @user=User.find(params[:id])
            @user.destroy
            redirect_to  new_search_path
           else
             redirect_to  new_search_path
           end
       end
     
          def edit
            @user=User.find(params[:id])
          end
     
       def update
            @user=User.find(params[:id])
         if  current_user.roll =="admin" || current_user.username == @user.username
             if @user.update_attributes(user_params)
                  redirect_to users_page_path
             else
                   render :edit
             end
         else
             redirect_to users_page_path
         end
       end
     
     
          private  def user_params
            params.require(:user).permit(:email,:username,:roll)
          end
    end
    stroy
        redirect_to wains_path
     
    end

private  def wain_params
       params.require(:wain).permit(:name,:count,:id_product,:image,:cost)
     end

 def set_post
       @product = Product.find(params[:product_id])
     end
    
end
