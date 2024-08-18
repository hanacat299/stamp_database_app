FactoryBot.define do
  factory :stamp do
    name            {'test'}
    number          { 1111 }
    height          { 100 }
    width           { 100 }
    design_id       { 2 }
    stamp_color_id  { 2 }
    stamp_number    {'KPG2'}
    paper_color_id  { 2 }
    paper_name      {'タントN-8'}
    paper_weight   {'4/6判Y目70kg'}
    temperature     { 500 }
    push_time       { 0.5 }
    push_pressure   { 1 }
    set_time_id     { 2 }
    remark          {'備考欄'}
  end
  
  after(:build) do |stamp|
    stamp.image.attach(io: File.open('public/images/stamp-sample.png'), filename: 'stamp-sample.png')
  end

end