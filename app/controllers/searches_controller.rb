class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    #getのHTTPメソッドはURLににデータが直接組み込まれたparamsに格納された値を取得
    @range = params[:range]

    if @range =="User"
      @users = User.looks(params[:search], params[:word])
    else
      @books = Book.looks(params[:search], params[:ward])
    end
  end
end
