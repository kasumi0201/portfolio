class InquiryMailer < ActionMailer::Base
  default from: "kasumi0201@gmail.com"   # 送信元アドレス
  default to: "kasumi0201@gmail.com"     # 送信先アドレス

  def received_email(inquiry)
    @inquiry = inquiry
    mail(:subject => 'お問い合わせを承りました')
  end

end
