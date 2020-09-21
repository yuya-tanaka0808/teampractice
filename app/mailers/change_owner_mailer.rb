class ChangeOwnerMailer < ApplicationMailer
  default from: 'from@example.com'

  def change_owner_mail(team)
    @team = team
    @new_owner = @team.owner
    @email = @new_owner.email
    mail to: @email, subject: 'あなたがリーダーになりました！'
  end
end
