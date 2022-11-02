class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result.page(params[:page])
  end

  def show; end

  def new
    @post = Post.new
  end

  def edit; end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        # format.html { redirect_to posts_url, notice: I18n.t('messages.create.notice') }
        format.turbo_stream do
          render turbo_stream: turbo_stream.prepend('posts', partial: 'posts/tr_post', locals: { post: @post })
        end
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def update
    if @post.update(post_params)
      redirect_to posts_url, notice: t('messages.update.notice')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @post.destroy
      # redirect_to posts_url, notice: t('messages.destroy.notice')
      # respond_to do |format|
      #   format.turbo_stream do
      #     render turbo_stream: turbo_stream.remove('posts', partial: 'posts/tr_post', locals: { post: @post })
      #   end
      # end
    else
      redirect_to posts_url, alert: @post.errors
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def post_params
    params.require(:post).permit(:primeiro, :segundo)
  end
end
