module ContentsHelper
  def average_rating(comments)
    if comments.any?
      total_rating = comments.sum(&:rating)
      average = total_rating.to_f / comments.length
      average.round(2) # Округляем до двух знаков после запятой
    else
      "N/A"
    end
  end
end