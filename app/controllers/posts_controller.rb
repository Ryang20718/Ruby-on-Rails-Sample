class PostsController < ApplicationController
    def new
        #where users submits data & content for post
    end
   
 #   def create
        #action that saves submitted data into database
        #print "params = "
        #puts params
        
  #      @post = Post.new
  #      @post.title = params[:input_title] #how we get the title
  #      @post.content = params[:input_content]#how we get the content
  #      @post.save
  #      
  #      redirect_to "/posts/show/#{@post.id}"
  #  end
  
    def create
        #action that saves submitted data into database
        #print "params = "
        #puts params
        
        @post = Post.new
        @post.title = params[:lNum] #Locker Num
        @post.content = params[:lComb]#Locker Comb
        @post.save
        
        redirect_to "/posts/show/#{@post.id}"
    end
    
    def index
        #view that shows all posts
        @posts = Post.all
    end
    
  #  def show
 #       #view that shows 1 post
 #       print 'param = '
 #       puts params
        
 #       @post = Post.find(params[:post_id])
 #   end
    
    def show
        #view that shows 1 post
        print 'param = '
        puts params
        
        @post = Post.find(params[:post_id])
    end
    
    
    
    
    def edit
        #user edits existing post
        @post = Post.find(params[:post_id])
    end
    
    def update
        #action updates database
        @post = Post.find(params[:post_id])
         @post.title = params[:input_title] #how we get the title
        @post.content = params[:input_content]#how we get the content
        @post.save
        redirect_to '/posts/index'
    end
    
    
    
    # deletes posts in database
    def destroy
        @post = Post.find(params[:post_id])
        @post.delete
        redirect_to '/posts/index'
    end
    
    
    def destroyAll
        	
@post = Post.all(params[:post_id])
@post.delete
    end
end
