require './lib/pagination_helper'

RSpec.describe PaginationHelper do
  let(:collection) { ['a', 'b', 'c', 'd','e', 'f'] }
  let(:items_per_page) { 4 }
  let(:pagination_helper) { PaginationHelper.new(collection, items_per_page) }

  describe '.item_count' do
    it 'returns the number of items within the entire collection' do
      expect(pagination_helper.item_count).to eq(6)
    end
  end

  describe '.page_count' do
    it 'returns the number of pages' do
      expect(pagination_helper.page_count).to eq(2)
    end
  end

  describe '.page_item_count' do
    let(:page_indexes) {{ first: 0, second: 1 }}
    it 'returns the number of items on the current page' do
      expect(pagination_helper.page_item_count(page_indexes[:first])).to eq(4)
      expect(pagination_helper.page_item_count(page_indexes[:second])).to eq(2)
    end
  end

  describe '.page_index' do
    let(:item_indexes) {{ first: 0, second: 4, invalid: -1 }}
    it 'determines the page the item is on' do
      expect(pagination_helper.page_index(item_indexes[:first])).to eq(0)
      expect(pagination_helper.page_index(item_indexes[:second])).to eq(1)
    end

    # Kata requirements: negative num for index is invalid
    it 'returns -1 for indexes out of range' do
      expect(pagination_helper.page_index(item_indexes[:invalid])).to eq(-1)
    end
  end
end
