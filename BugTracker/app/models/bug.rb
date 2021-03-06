class Bug < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true

    enum issue_type: [ :issue, :enhancement, :feature ]
    enum priority: [ :low, :medium, :high ]
    enum status: [ :open, :closed, :monitor ]

    belongs_to :user
end
