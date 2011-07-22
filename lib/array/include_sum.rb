class Array
  def include_sum?(sum)
    a = self.sort
    i = 0
    j = self.length - 1
    
    while i <= j
      case a[i] + a[j] <=> sum
        when -1 then i += 1
        when  1 then j -= 1
        else         return true
      end
    end
  end
end
