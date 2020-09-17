module User::Operation
  class Index < Trailblazer::Operation

    pass :load_users
    pass :order_the_users

    def load_users(ctx, **)
      ctx[:users] = User.all
    end

    def order_the_users(ctx, users:, **)
      ctx[:users] = users.order(created_at: :desc)
    end
  end
end
