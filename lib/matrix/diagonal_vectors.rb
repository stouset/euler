require 'matrix'

class Matrix
  def diagonal_vectors
    Matrix.Raise ErrDimensionMismatch unless square?
    
    [ Vector[*row_size.times.map {|i| self[ i,                i ] }],
      Vector[*row_size.times.map {|i| self[ row_size - i - 1, i ] }], ]
  end
end
