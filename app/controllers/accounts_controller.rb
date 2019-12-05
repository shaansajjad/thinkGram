class AccountsController < ApplicationController
	before_action :authenticaticate_account!

	def index

	end

end
