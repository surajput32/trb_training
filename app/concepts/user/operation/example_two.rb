module User::Operation
  class ExampleTwo < Trailblazer::Operation
    step :valid_request?

    step :load_data, Output(:success) => Track(:suraj)

    step :filter_data, Output(:success) => Track(:suraj),
                       magnetic_to: :suraj
    fail :log_errors

    step :suraj_success_message, magnetic_to: :suraj

    def valid_request?(ctx, **)
      true
    end

    def load_data(ctx, **)
      ctx[:users] = User.all
    end

    def filter_data(ctx, **)
      puts 'Inside filter data'
      true
    end

    def log_errors(ctx, **)
      ctx[:errors] = 'Invalid request'
    end

    def suraj_success_message(ctx, **)
      puts 'Inside custom track'
      true
    end
  end
end
