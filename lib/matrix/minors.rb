require 'matrix'

class Matrix
  def minors(row_size, column_size)
    return to_enum(:minors, row_size, column_size) unless block_given?
    
    (self.row_size - row_size + 1).times do |row|
      (self.column_size - column_size + 1).times do |column|
        yield self.minor(row, row_size, column, column_size)
      end
    end
  end
end
