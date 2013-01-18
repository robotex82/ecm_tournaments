# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ecm_tournaments_type, :class => 'Ecm::Tournaments::Type'  do
    sequence(:name) {|i| "Type #{i}" }
    sequence(:class_identifier) {|i| "Class identifier #{i}" }
  end
end
