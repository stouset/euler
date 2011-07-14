class Integer
  WORDS = Hash.new do |cache, n|
    cache[n] = case
      when n.negative?              then "negative #{n.abs.to_word}"
      when n < 100                  then "#{cache[n / 10 * 10]}-#{cache[n % 10]}"
      when n < 1000 && n % 100 == 0 then "#{cache[n / 100]} hundred"
      when n < 1000                 then "#{cache[n / 100]} hundred and #{cache[n % 100]}"
      else
        digits    = (n.digits.count - 1) / 3
        thousands = 10 ** (digits * 3)
        first     = n / thousands
        rest      = n % thousands
        
        if THOUSANDS[digits - 1].nil?
          raise ArgumentError, "Cannot count higher than #{THOUSANDS.last}s"
        end
        
        rest.zero? ? 
          "#{cache[first]} #{THOUSANDS[digits - 1]}" :
          "#{cache[first]} #{THOUSANDS[digits - 1]} #{cache[rest]}"
    end
  end
  
  WORDS.update(
    0  => 'zero',
    1  => 'one',
    2  => 'two',
    3  => 'three',
    4  => 'four',
    5  => 'five',
    6  => 'six',
    7  => 'seven',
    8  => 'eight',
    9  => 'nine',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',
    20 => 'twenty',
    30 => 'thirty',
    40 => 'forty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety',
  )
  
  THOUSANDS = %w{
    thousand
    million
    billion
    trillion
    quadrillion
    quintillion
    sextillion
    septillion
    octillion
    nonillion
    decillion
    undecillion
    duodecillion
    tredecillion
    quattrodecillion
    quindecillion
    sexdecillion
    septendecillion
    octodecillion
    novemdecillion
    vigintillion
  }
  
  def to_words
    WORDS[self]
  end
end
