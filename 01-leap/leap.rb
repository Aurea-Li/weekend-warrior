
def leap_year?(year)

  if year % 4 == 0
    if year % 100 == 0
      return year % 400 == 0 ? true : false
    end
    return true
  end
  return false
  
end
