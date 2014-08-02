# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee_review, :class => 'EmployeeReviews' do
    review_type_id 1
    score 1.5
    review_date "2014-08-01"
    comments "MyString"
    reviewed_by "MyString"
  end
end
