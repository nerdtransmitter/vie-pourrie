module HumanizeNumberHelper
  def humanize(number)
    case number
    when 0
      "one"
    when 1
      "two"
    when 2
      "three"
    when 3
      "four"
    when 4
      "five"
    end
  end
end
