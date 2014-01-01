require 'codemodels'

module CodeModels
module Properties

class PropertiesAstNode < CodeModels::CodeModelsAstNode
end

class Property < PropertiesAstNode
    has_attr 'name', String
    has_attr 'value', String
end

class PropertiesFile < PropertiesAstNode
    contains_many_uni 'properties', Property
end

end
end