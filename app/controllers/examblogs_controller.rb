class ExamblogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  def index
    @examblogs = Examblog.all
  end
  def new
    @examblog = Examblog.new
    if params[:back]
      @examblog = Examblog.new(examblog_params)
    else
      @examblog = Examblog.new
    end
  end
  def create
    @examblog = Examblog.new(examblog_params)
    if params[:back]
      render :new
    else
      if @examblog.save
        # 一覧画面へ遷移
        redirect_to examblogs_path, notice: "ブログを作成しました！"
      else
        # 入力ページを再描画
        render :new
      end
    end
  end
  def show
  end
  def edit
  end
  def update
    if @examblog.update(examblog_params)
      redirect_to examblogs_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end
  def destroy
    @examblog.destroy
    redirect_to examblogs_path, notice:"ブログを削除しました！"
  end
  def confirm
    @examblog = Examblog.new(examblog_params)
    render :new if @examblog.invalid?
  end
  private
  def examblog_params
    params.require(:examblog).permit(:title, :content)
  end
  def set_blog
    @examblog = Examblog.find(params[:id])
  end
end
