class TransactionDetail < ApplicationRecord
    validates :quantity, presence: true
    validates :quantity, numericality: { greater_than: 0 }

    belongs_to :transaksi
    belongs_to :furniture

    def price
        self.furniture.price
    end

end
