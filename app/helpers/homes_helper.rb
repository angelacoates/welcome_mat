module HomesHelper
  def css_class_for_how_old_this_home_is(date)
    if date <= 30.days.ago
      return "old-home"
    elsif date >= 2.days.ago
      return "new-home"
    else
      return "standard-home"
    end
  end

  def heart_class(home, user)
    favorite = Favorite.find_by(home: home, user: user)

    if favorite
      return "glyphicon-heart"
    else
      return "glyphicon-heart-empty"
    end
  end
end
