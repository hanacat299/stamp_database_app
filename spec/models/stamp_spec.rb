require 'rails_helper'

RSpec.describe Stamp, type: :model do

before do
  @stamp = FactoryBot.build(:stamp)
end

  
  describe '箔押し登録機能' do

    context '箔押しが登録できるとき' do

      it ':image, :number, :name, :height, :width, :design_id, :stamp_color_id, :stamp_number, :paper_color_id, :paper_name, :paper_weight, :temperature, :push_time, :push_pressure, :set_time_id, :remarkが存在すれば登録できる' do
        expect(@stamp).to be_valid
      end

      it '備考が空でも登録できる' do
        @stamp.remark = ""
        expect(@stamp).to be_valid
      end

    end

    context '箔押しが登録できないとき' do

      it 'imageが空では登録できない' do
        @stamp.image = nil
        @stamp.valid?
        expect(@stamp.errors.full_messages).to include("Image can't be blank")
      end

      it 'JOB番号が空では登録できない' do
        @stamp.number = ""
        @stamp.valid?
        expect(@stamp.errors.full_messages).to include("Number can't be blank")

      end

      it '品名が空では登録できない' do
        @stamp.name = ""
        @stamp.valid?
        expect(@stamp.errors.full_messages).to include("Name can't be blank")
      end

      it 'stamp_color_idが1だと登録できない' do
        @stamp.stamp_color_id = "1"
        @stamp.valid?
        expect(@stamp.errors.full_messages).to include("Stamp color must be other than 1")
      end

      it '版の縦幅が空では登録できない' do
        @stamp.height = ""
        @stamp.valid?
        expect(@stamp.errors.full_messages).to include("Height can't be blank")
      end

      it '版の横幅が空では登録できない' do
        @stamp.width = ""
        @stamp.valid?
        expect(@stamp.errors.full_messages).to include("Width can't be blank")
      end

      it 'design_idが1だと登録できない' do
        @stamp.design_id = "1"
        @stamp.valid?
        expect(@stamp.errors.full_messages).to include("Design must be other than 1")
      end

      it '紙名が空では登録できない' do
        @stamp.paper_name = ""
        @stamp.valid?
        expect(@stamp.errors.full_messages).to include("Paper name can't be blank")
      end

      it '紙厚が空では登録できない' do
        @stamp.paper_weight = ""
        @stamp.valid?
        expect(@stamp.errors.full_messages).to include("Paper weight can't be blank")
      end

      it '温度が空では登録できない' do
        @stamp.temperature = ""
        @stamp.valid?
        expect(@stamp.errors.full_messages).to include("Temperature can't be blank")
      end

      it '温度が0以下では登録できない' do
        @stamp.temperature = 0
        @stamp.valid?
        expect(@stamp.errors.full_messages).to include("Temperature must be greater than 0")
      end
      
      it '圧が空では登録できない' do
        @stamp.push_pressure = ""
        @stamp.valid?
        expect(@stamp.errors.full_messages).to include("Push pressure can't be blank")
      end

      it '押し時間が空では登録できない' do
        @stamp.push_time = ""
        @stamp.valid?
        expect(@stamp.errors.full_messages).to include("Push time can't be blank")
      end

      it 'set_time_idが1では登録できない' do
        @stamp.set_time_id = "1"
        @stamp.valid?
        expect(@stamp.errors.full_messages).to include("Set time must be other than 1")
      end

    end

  end

end
