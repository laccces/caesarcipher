def cipher(string, shift)

  array = string.scan(/./) #takes the specified string and splits it into an array
  
  nums = array.map { |x| x.ord } # turns each character from the array into a number
  
  shifted = nums.map { |n| n + shift } # adds the shift digit to each of the numbers in the array
  
  # the section below looks up capital and lower case letters and ignores things like spaces and punctuation. It also allows the letters to wrap, so if you move z on 3 spaces it will equal c.

  shifted = nums.map { |i|
    if i.between?(65, 90)
      ((i - 65 + shift) % 26)+ 65
    elsif i.between?(97, 122)
      ((i - 97 + shift) % 26) + 97
    else i
    end
  }

  back_to_chars = shifted.map { |y| y.chr} # turns the numbers back into letters
  
  joined = back_to_chars.join #joins the array back to a string
  
end 
