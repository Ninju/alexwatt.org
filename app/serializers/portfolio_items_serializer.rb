class PortfolioItemsSerializer < ActiveModel::ArraySerializer
  class << self
    def as_collection(items)
      new(items, each_serializer: PortfolioItemSerializer)
    end
  end
end
