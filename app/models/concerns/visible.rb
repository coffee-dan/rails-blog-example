# ruby version of mixin
# resued module elements that can be mixed in with any model
module Visible
	extend ActiveSupport::Concern

	VALID_STATUSES = ['public', 'private', 'archived']

	included do
		validates :status, inclusion: { in: VALID_STATUSES }
	end

	# mixin class methods
	class_methods do
		def public_count
			where(status: 'public').count
		end
	end

	# instance methods??
	def archived?
		status == 'archived'
	end
end
