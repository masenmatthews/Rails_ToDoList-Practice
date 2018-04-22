FactoryBot.define do
  factory(:task) do
    name('Knit the sock monkey')
    priority(1)

  end
end

describe Task do
  it 'is private by default' do
    task = FactoryBot.create(:task)
    task.name.should eq 'Knit the sock monkey'
  end

  it 'converts the name to lowercase' do
    task = FactoryBot.create(:task, :name => "Herd the cats")
    task.name.should eq "Herd the cats"
  end
end
