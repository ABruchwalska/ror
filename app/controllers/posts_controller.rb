class PostsController < ApplicationController
  def index
  	@posts = Post.all.order({date: :desc, id: :desc})
  end

  def new
  end

  def create
  	post_params = params['post'].permit('title', 'content')
  	Post.create(post_params)
  	redirect_to(posts_path)
  end

  def edit
  	@post = get_post
  end

  def update
  	post_params = params['post'].permit('title', 'content')
  	post = get_post
  	post.update(post_params)
  	redirect_to(posts_path)
  end

  def destroy
  	post = get_post
  	post.destroy
  	redirect_to(posts_path)
  end

  def get_post(id)
  	Post.find(params['id'])
  end
  end

end
