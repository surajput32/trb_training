module User::Operation
  class ExampleThree < Trailblazer::Operation
    step :create_user
    step :address_present?, Output(:failure) => Id(:send_mail)
    step :create_address
    step :send_mail

    def create_user(ctx, params:, **)
      ctx[:user] = User.create(params[:user])
    end

    def address_present?(ctx, params:, **)
      params[:address].present?
    end

    def create_address(ctx, params:, user:, **)
      user.create_address(params[:address])
    end

    def send_mail(ctx, **)
      puts 'Sent mail'
      true
    end
  end
end
