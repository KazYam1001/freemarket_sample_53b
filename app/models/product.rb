class Product < ApplicationRecord
  # association
  has_many :images, dependent: :destroy
  belongs_to :seller, class_name: 'User'
  belongs_to :buyer,  class_name: 'User'
  belongs_to :product_category
  belongs_to :size,  optional: :true
  belongs_to :brand, optional: :true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  # validation

  # enums
  # 商品の状態
  enum condition: {
    '新品、未使用': 1,
    '未使用に近い': 2,
    '目立った傷や汚れなし': 3,
    'やや傷や汚れあり': 4,
    '傷や汚れあり': 5,
    '全体的に状態が悪い': 6,
  }
  # 配送料の負担
  enum delivery_burden: {
    '送料込み(出品者負担)': 1,
    '着払い(購入者負担)': 2,
  }
  # 発送方法
  enum delivery_method: {
    '未定': 1,
    'らくらくメルカリ便': 2,
    'ゆうメール': 3,
    'レターパック': 4,
    '普通郵便(定形、定形外)': 5,
    'クロネコヤマト': 6,
    'ゆうパック': 7,
    'クリックポスト': 8,
    'ゆうパケット': 9,
  }
  # 発送までの日数
  enum delivery_time: {
    '1~2日で発送': 1,
    '2~3日で発送': 2,
    '4~7日で発送': 3,
  }
  # 商品の取引状況
  enum status: {
    on_sale: 1,
    sold: 2,
    stopped: 3,
  }
end
