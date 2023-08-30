require_relative 'base_decorator'

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name.slice(0, 4)
  end
end
