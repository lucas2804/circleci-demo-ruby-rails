require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'init redis server' do
    it 'should run redis normaly' do
      redis = Redis.new(port: 6379, db: 15)
      redis.set('mykey', 'connect redis successfully')

      expect(redis.get('mykey')).to eq('connect redis successfully1')
    end
  end
end
