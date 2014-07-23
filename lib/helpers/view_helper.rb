module ViewHelper
  def make_stars(num)
    sh = ""
    for i in 1..num
      sh += "<i class='fa fa-star'></i>"
    end
    if num.modulo(1) == 0.5 then
      sh += "<i class='fa fa-star-half-full'></i>"
    elsif num.modulo(1) != 0 then
      abort("Can't have a star value that is not in increments of 0.5.")
    end
    if num < 0 or num > 4 then
      abort("Can't have a star value greater than 4 or less than 0.");
    end
    sh
  end
end
