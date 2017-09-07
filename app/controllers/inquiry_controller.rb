class InquiryController < ApplicationController
  def index
    # 入力画面を表示
    @inquiry = Inquiry.new
    render :action => 'index'
  end

  def confirm
    # 入力値のチェック
    @inquiry = Inquiry.new(params[:inquiry])
    if @inquiry.valid?
      # OK。確認画面を表示
      render :action => 'confirm'
    else
      # NG。入力画面を再表示
      render :action => 'index'
    end
  end

  # def thanks
  #   # メール送信
  #   @inquiry = Inquiry.new(params[:inquiry])
  #   InquiryMailer.received_email(@inquiry).deliver
  #
  #   # 完了画面を表示
  #   render :action => 'thanks'
  # end

  def thanks
    @inquiry = Inquiry.new(params_inquiry)
      # 完了画面を表示
      render :action => 'thanks'
  end

  private

  def params_inquiry
    # submitしたデータのうち、Model作成に必要なものを
    # permitの引数に指定する
    params.require(:inquiry).permit(:inquiry,:name,:email,:message)
  end

end