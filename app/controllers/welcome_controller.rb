class WelcomeController < ApplicationController
  def start
	@posts = Post.all.order({date: :desc, id: :desc})
	@date = Date.today
  end
end
