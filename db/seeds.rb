User.create!(
  [
    {
      admin: true,
      email: 'admin@hoge.fuga',
      password: 'adminadmin',
    }
  ]
)

%w[プログラマー リードデベロッパー プレイングマネージャー].each do |n|
  Conduct.create! name: n
end
%w[正社員 契約社員 業務委託 派遣].each do |n|
  Employment.create! name: n
end
%w[Ruby Ruby\ on\ Rails RSpec SystemSpec].each do |n|
  Technology.create! name: n
end
