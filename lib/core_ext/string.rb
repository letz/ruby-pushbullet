class String
  def demodulize
    if (i = rindex('::'))
      self[(i + 2)..-1]
    else
      self
    end
  end
end
