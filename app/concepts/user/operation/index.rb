module User::Operation
  class Index < Trailblazer::Operation
    step :model

    def model(ctx, **)
      ctx[:model] = User.all
    end
  end
end