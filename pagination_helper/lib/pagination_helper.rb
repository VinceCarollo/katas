class PaginationHelper
  def initialize(collection, items_per_page)
    @layout = Layout.new(collection, items_per_page)
  end

  # returns the number of items within the entire collection
  def item_count
    @layout.collection.length
  end

  # returns the number of pages
  def page_count
    @layout.pages.length
  end

  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    page = @layout.pages[page_index]
    return -1 unless page && page_index >= 0
    page.items.length
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    item = @layout.collection[item_index]
    return -1 unless item && item_index >= 0
    @layout.pages.index{ |page| page.items.include?(item) }
  end
end

class Layout
  attr_reader :pages, :collection

  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
    @pages = []
    create_layout
  end

  private

  def create_layout
    @collection.each_slice(@items_per_page) do |items|
      self.pages << Page.new(items)
    end
  end
end

class Page
  attr_reader :items
  def initialize(items)
    @items = items
  end
end
