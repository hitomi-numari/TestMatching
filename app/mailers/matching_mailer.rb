class MatchingMailer < ApplicationMailer

  def unmatching_mail(informed_members)
    @informed_members = informed_members
    mail to: @informed_members.map(&:email), subject: "マッチング不成立のお知らせ"

  end

  def matching_mail(matching_member)
    @matching_member = matching_member
    mail to: @matching_member, subject: "マッチング成立のお知らせ"
  end

end
