require 'codemodels'

module CodeModels
module Properties

class Parser < CodeModels::Parser

    def internal_parse_artifact(artifact)
        code = artifact.code
        node = PropertiesFile.new
        artifact.code.lines.map(&:chomp).each do |l|
            name,value = l.split(':')
            child_node = Property.new
            child_node.name = name
            child_node.value = value
            node.addProperties(child_node)
        end
        node
    end
end

end
end