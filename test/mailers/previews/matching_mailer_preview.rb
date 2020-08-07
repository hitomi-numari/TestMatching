# Preview all emails at http://localhost:3000/rails/mailers/matching_mailer
class MatchingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/matching_mailer/mailer
  def mailer
    MatchingMailer.mailer
  end

end
