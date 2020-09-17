module User::Operation
  class Charge < Trailblazer::Operation
    # step :validate
    # step :decide_type,
    #     Output(Activity::Left, :credit_card) => Path(end_id: "End.cc", end_task: End(:with_cc)) do
    #   step :authorize
    #   step :charge
    # end
    # step :direct_debit

    def validate(ctx, **)
      true
    end

    def decide_type(ctx, **)
      puts 'In decide type'
      false
    end

    def authorize(ctx, **)
      puts 'Authorized'
      true
    end

    def charge(ctx, **)
      puts 'Charged'
      true
    end

    def direct_debit(ctx, **)
      true
    end

    def with_cc(ctx, **)
      true
    end
  end
end
