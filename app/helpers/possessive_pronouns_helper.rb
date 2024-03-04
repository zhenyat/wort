module PossessivePronounsHelper
  def with_ending(object)
    if object.ending?
      root = object.de.chomp(object.ending)
      "#{root}<b><font color='red'>#{object.ending}</font></b>".html_safe
    else
      object.de
    end
  end
end
