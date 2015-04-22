class Department < ActiveRecord::Base
    validates :dept_name, presence: true, uniqueness: true
    validates :dept_no, presence: true, uniqueness: true
end
