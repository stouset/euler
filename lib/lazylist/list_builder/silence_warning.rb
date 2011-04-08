require 'lazylist/list_builder'

class LazyList::ListBuilder::ListBuilderProc
  def initialize_with_silenced_warning(*args, &block)
    @variables_prepared = false
    initialize_without_silenced_warning(*args, &block)
  end
  
  alias initialize_without_silenced_warning initialize
  alias initialize initialize_with_silenced_warning
end
