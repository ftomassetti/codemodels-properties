require 'codemodels'

module CodeModels
module Properties

class PropertiesLanguage < Language
	def initialize
		super('Properties')
		@extensions << 'properties'
		@parser = CodeModels::Properties::Parser.new
	end
end

CodeModels.register_language PropertiesLanguage.new

end
end