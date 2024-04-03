class BooksController < ApplicationController
  before_action :set_book, only: [:show, :destroy]

  def show
    respond_to do |format|
      format.html 
      format.json { render json: @book }
    end
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to "/" }
      format.json { head :no_content }
    end
  end

  private

  def set_book
    @book = Book.find_by(id: params[:id])
    render file: "#{Rails.root}/public/404.html", status: :not_found unless @book
  end

  def action_logger
    logger.info "around-before"
    yield
    logger.info "around-after"
  end
end
