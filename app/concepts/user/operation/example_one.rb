module User::Operation
  class ExampleOne < Trailblazer::Operation
    step :first_step
    step :second_step
    fail :first_fail
    step :third_step
    fail :second_fail

    def first_step(ctx, **)
      p 'In first step'
      true
    end

    def second_step(ctx, **)
      p 'In second step'
      true
    end

    def first_fail(ctx, **)
      p 'In first fail'
    end

    def third_step(ctx, **)
      p 'In third step'
      true
    end

    def second_fail(ctx, **)
      p 'In second fail'
    end
  end
end
