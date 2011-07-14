require 'xsd/qname'

# {urn:auraUserData}TableCell
class TableCell
  @@schema_type = "TableCell"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")]], ["value", ["PropertyValue", XSD::QName.new(nil, "value")]]]

  attr_accessor :value

  def class
    @v_class
  end

  def class=(value)
    @v_class = value
  end

  def initialize(v_class = nil, value = nil)
    @v_class = v_class
    @value = value
  end
end

# {urn:auraUserData}NAryArgument
class NAryArgument
  @@schema_type = "NAryArgument"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["var", ["SOAP::SOAPQName", XSD::QName.new(nil, "var")]], ["ival", ["SOAP::SOAPInt", XSD::QName.new(nil, "ival")]], ["fval", ["SOAP::SOAPFloat", XSD::QName.new(nil, "fval")]], ["subnode", ["NAryNode", XSD::QName.new(nil, "subnode")]]]

  attr_accessor :var
  attr_accessor :ival
  attr_accessor :fval
  attr_accessor :subnode

  def initialize(var = nil, ival = nil, fval = nil, subnode = nil)
    @var = var
    @ival = ival
    @fval = fval
    @subnode = subnode
  end
end

# {urn:auraUserData}Literal
class Literal
  @@schema_type = "Literal"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")]], ["targets", ["QNameArray", XSD::QName.new(nil, "targets")]], ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")]], ["isNegated", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNegated")]]]

  attr_accessor :source
  attr_accessor :targets
  attr_accessor :relation
  attr_accessor :isNegated

  def initialize(source = nil, targets = nil, relation = nil, isNegated = nil)
    @source = source
    @targets = targets
    @relation = relation
    @isNegated = isNegated
  end
end

# {urn:auraUserData}TableRow
class TableRow < ::Array
  @@schema_type = "TableCell"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["TableCell", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}TableColumn
class TableColumn
  @@schema_type = "TableColumn"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["header", ["SOAP::SOAPQName", XSD::QName.new(nil, "header")]], ["order", ["SOAP::SOAPInt", XSD::QName.new(nil, "order")]]]

  attr_accessor :header
  attr_accessor :order

  def initialize(header = nil, order = nil)
    @header = header
    @order = order
  end
end

# {urn:auraUserData}clibClass
class ClibClass
  @@schema_type = "clibClass"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["value", ["SOAP::SOAPQName", XSD::QName.new(nil, "value")]], ["entity", ["EntityType", XSD::QName.new(nil, "Entity")]], ["temporal_Entity", ["TemporalEntityType", XSD::QName.new(nil, "Temporal-Entity")]], ["event", ["EventType", XSD::QName.new(nil, "Event")]], ["role", ["RoleType", XSD::QName.new(nil, "Role")]], ["property_Value", ["PropertyValueType", XSD::QName.new(nil, "Property-Value")]]]

  attr_accessor :value
  attr_accessor :temporal_Entity
  attr_accessor :property_Value

  def Entity
    @entity
  end

  def Entity=(value)
    @entity = value
  end

  def Event
    @event
  end

  def Event=(value)
    @event = value
  end

  def Role
    @role
  end

  def Role=(value)
    @role = value
  end

  def initialize(value = nil, entity = nil, temporal_Entity = nil, event = nil, role = nil, property_Value = nil)
    @value = value
    @entity = entity
    @temporal_Entity = temporal_Entity
    @event = event
    @role = role
    @property_Value = property_Value
  end
end

# {urn:auraUserData}templateInstance
class TemplateInstance
  @@schema_type = "templateInstance"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["instance", ["SOAP::SOAPQName", XSD::QName.new(nil, "instance")]], ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]]

  attr_accessor :instance
  attr_accessor :description

  def initialize(instance = nil, description = nil)
    @instance = instance
    @description = description
  end
end

# {urn:auraUserData}Entity-Type
class EntityType
  @@schema_type = "Entity-Type"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")]], ["templateInstance", ["TemplateInstance", XSD::QName.new(nil, "templateInstance")]]]

  attr_accessor :templateInstance

  def class
    @v_class
  end

  def class=(value)
    @v_class = value
  end

  def initialize(v_class = nil, templateInstance = nil)
    @v_class = v_class
    @templateInstance = templateInstance
  end
end

# {urn:auraUserData}Temporal-Entity-Type
class TemporalEntityType
  @@schema_type = "Temporal-Entity-Type"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")]], ["templateInstance", ["TemplateInstance", XSD::QName.new(nil, "templateInstance")]]]

  attr_accessor :templateInstance

  def class
    @v_class
  end

  def class=(value)
    @v_class = value
  end

  def initialize(v_class = nil, templateInstance = nil)
    @v_class = v_class
    @templateInstance = templateInstance
  end
end

# {urn:auraUserData}Event-Type
class EventType
  @@schema_type = "Event-Type"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")]], ["templateInstance", ["TemplateInstance", XSD::QName.new(nil, "templateInstance")]]]

  attr_accessor :templateInstance

  def class
    @v_class
  end

  def class=(value)
    @v_class = value
  end

  def initialize(v_class = nil, templateInstance = nil)
    @v_class = v_class
    @templateInstance = templateInstance
  end
end

# {urn:auraUserData}Role-Type
class RoleType
  @@schema_type = "Role-Type"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")]], ["templateInstance", ["TemplateInstance", XSD::QName.new(nil, "templateInstance")]]]

  attr_accessor :templateInstance

  def class
    @v_class
  end

  def class=(value)
    @v_class = value
  end

  def initialize(v_class = nil, templateInstance = nil)
    @v_class = v_class
    @templateInstance = templateInstance
  end
end

# {urn:auraUserData}Property-Value-Type
class PropertyValueType
  @@schema_type = "Property-Value-Type"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")]], ["templateInstance", ["TemplateInstance", XSD::QName.new(nil, "templateInstance")]]]

  attr_accessor :templateInstance

  def class
    @v_class
  end

  def class=(value)
    @v_class = value
  end

  def initialize(v_class = nil, templateInstance = nil)
    @v_class = v_class
    @templateInstance = templateInstance
  end
end

# {urn:auraUserData}Slot-Type
class SlotType
  @@schema_type = "Slot-Type"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["name", ["SOAP::SOAPQName[]", XSD::QName.new(nil, "name")]], ["domain", ["ClibClass[]", XSD::QName.new(nil, "domain")]], ["range", ["ClibClass[]", XSD::QName.new(nil, "range")]]]

  attr_accessor :name
  attr_accessor :domain
  attr_accessor :range

  def initialize(name = [], domain = [], range = [])
    @name = name
    @domain = domain
    @range = range
  end
end

# {urn:auraUserData}CardinalityConstraintTerm
class CardinalityConstraintTerm
  @@schema_type = "CardinalityConstraintTerm"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["operator", ["SOAP::SOAPQName", XSD::QName.new(nil, "operator")]], ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")]], ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")]]]

  attr_accessor :operator
  attr_accessor :count

  def class
    @v_class
  end

  def class=(value)
    @v_class = value
  end

  def initialize(operator = nil, count = nil, v_class = nil)
    @operator = operator
    @count = count
    @v_class = v_class
  end
end

# {urn:auraUserData}TypeConstraintTerm
class TypeConstraintTerm
  @@schema_type = "TypeConstraintTerm"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["operator", ["SOAP::SOAPQName", XSD::QName.new(nil, "operator")]], ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")]]]

  attr_accessor :operator

  def class
    @v_class
  end

  def class=(value)
    @v_class = value
  end

  def initialize(operator = nil, v_class = nil)
    @operator = operator
    @v_class = v_class
  end
end

# {urn:auraUserData}ArrayOfTableColumns
class ArrayOfTableColumns < ::Array
  @@schema_type = "TableColumn"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["TableColumn", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ArrayOfTableRows
class ArrayOfTableRows < ::Array
  @@schema_type = "TableRow"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["TableRow", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}DocumentationElement
class DocumentationElement
  @@schema_type = "DocumentationElement"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["string", ["SOAP::SOAPString", XSD::QName.new(nil, "string")]], ["reference", ["SOAP::SOAPQName", XSD::QName.new(nil, "reference")]]]

  attr_accessor :string
  attr_accessor :reference

  def initialize(string = nil, reference = nil)
    @string = string
    @reference = reference
  end
end

# {urn:auraUserData}ArrayOfLiterals
class ArrayOfLiterals < ::Array
  @@schema_type = "Literal"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["Literal", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ArrayOfLogicalFormulas
class ArrayOfLogicalFormulas < ::Array
  @@schema_type = "LogicalFormula"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["LogicalFormula", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}QNameMap
class QNameMap
  @@schema_type = "QNameMap"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["key", ["SOAP::SOAPQName", XSD::QName.new(nil, "key")]], ["value", ["SOAP::SOAPQName", XSD::QName.new(nil, "value")]]]

  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# {urn:auraUserData}NAryArgumentArray
class NAryArgumentArray < ::Array
  @@schema_type = "NAryArgument"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["NAryArgument", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}Atom
class Atom
  @@schema_type = "Atom"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["elementType", ["SOAP::SOAPString", XSD::QName.new(nil, "elementType")]], ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")]]]

  attr_accessor :elementType
  attr_accessor :count

  def initialize(elementType = nil, count = nil)
    @elementType = elementType
    @count = count
  end
end

# {urn:auraUserData}AtomArray
class AtomArray < ::Array
  @@schema_type = "Atom"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["Atom", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}UnificationDiff
class UnificationDiff
  @@schema_type = "UnificationDiff"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["node1", ["SOAP::SOAPQName", XSD::QName.new(nil, "node1")]], ["node2", ["SOAP::SOAPQName", XSD::QName.new(nil, "node2")]], ["result", ["SOAP::SOAPQName", XSD::QName.new(nil, "result")]]]

  attr_accessor :node1
  attr_accessor :node2
  attr_accessor :result

  def initialize(node1 = nil, node2 = nil, result = nil)
    @node1 = node1
    @node2 = node2
    @result = result
  end
end

# {urn:auraUserData}NAryNode
class NAryNode
  @@schema_type = "NAryNode"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["operator", ["SOAP::SOAPQName", XSD::QName.new(nil, "operator")]], ["arguments", ["NAryArgumentArray", XSD::QName.new(nil, "arguments")]]]

  attr_accessor :operator
  attr_accessor :arguments

  def initialize(operator = nil, arguments = nil)
    @operator = operator
    @arguments = arguments
  end
end

# {urn:auraUserData}QNameTable
class QNameTable < ::Array
  @@schema_type = "QNameMap"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["QNameMap", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ArrayOfConstraintTerms
class ArrayOfConstraintTerms < ::Array
  @@schema_type = "ConstraintTermHolder"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["ConstraintTermHolder", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}LogicalFormula
class LogicalFormula
  @@schema_type = "LogicalFormula"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["operator", ["SOAP::SOAPQName", XSD::QName.new(nil, "operator")]], ["literals", ["ArrayOfLiterals", XSD::QName.new(nil, "literals")]], ["formulas", ["ArrayOfLogicalFormulas", XSD::QName.new(nil, "formulas")]]]

  attr_accessor :operator
  attr_accessor :literals
  attr_accessor :formulas

  def initialize(operator = nil, literals = nil, formulas = nil)
    @operator = operator
    @literals = literals
    @formulas = formulas
  end
end

# {urn:auraUserData}Documentation
class Documentation < ::Array
  @@schema_type = "DocumentationElement"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["DocumentationElement", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}Table
class Table
  @@schema_type = "Table"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["columns", ["ArrayOfTableColumns", XSD::QName.new(nil, "columns")]], ["rows", ["ArrayOfTableRows", XSD::QName.new(nil, "rows")]]]

  attr_accessor :columns
  attr_accessor :rows

  def initialize(columns = nil, rows = nil)
    @columns = columns
    @rows = rows
  end
end

# {urn:auraUserData}Position
class Position
  @@schema_type = "Position"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["x", ["SOAP::SOAPInt", XSD::QName.new(nil, "x")]], ["y", ["SOAP::SOAPInt", XSD::QName.new(nil, "y")]]]

  attr_accessor :x
  attr_accessor :y

  def initialize(x = nil, y = nil)
    @x = x
    @y = y
  end
end

# {urn:auraUserData}BasicNode
class BasicNode
  @@schema_type = "BasicNode"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")]], ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]], ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")]], ["position", ["Position", XSD::QName.new(nil, "position")]], ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")]], ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")]], ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")]], ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")]], ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")]], ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")]], ["userDefinedLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "userDefinedLabel")]], ["type", ["SOAP::SOAPQName", XSD::QName.new(nil, "type")]], ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")]], ["expansionState", ["SOAP::SOAPQName", XSD::QName.new(nil, "expansionState")]], ["isRoot", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isRoot")]], ["isQueryNode", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isQueryNode")]], ["isNamedIndividual", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNamedIndividual")]], ["paraphrase", ["SOAP::SOAPInteger", XSD::QName.new(nil, "paraphrase")]]]

  attr_accessor :identifier
  attr_accessor :label
  attr_accessor :documentation
  attr_accessor :position
  attr_accessor :isVisible
  attr_accessor :isNeverVisible
  attr_accessor :isViewed
  attr_accessor :isDisplayed
  attr_accessor :isEnclosed
  attr_accessor :isNew
  attr_accessor :userDefinedLabel
  attr_accessor :type
  attr_accessor :comment
  attr_accessor :expansionState
  attr_accessor :isRoot
  attr_accessor :isQueryNode
  attr_accessor :isNamedIndividual
  attr_accessor :paraphrase

  def initialize(identifier = nil, label = nil, documentation = nil, position = nil, isVisible = nil, isNeverVisible = nil, isViewed = nil, isDisplayed = nil, isEnclosed = nil, isNew = nil, userDefinedLabel = nil, type = nil, comment = nil, expansionState = nil, isRoot = nil, isQueryNode = nil, isNamedIndividual = nil, paraphrase = nil)
    @identifier = identifier
    @label = label
    @documentation = documentation
    @position = position
    @isVisible = isVisible
    @isNeverVisible = isNeverVisible
    @isViewed = isViewed
    @isDisplayed = isDisplayed
    @isEnclosed = isEnclosed
    @isNew = isNew
    @userDefinedLabel = userDefinedLabel
    @type = type
    @comment = comment
    @expansionState = expansionState
    @isRoot = isRoot
    @isQueryNode = isQueryNode
    @isNamedIndividual = isNamedIndividual
    @paraphrase = paraphrase
  end
end

# {urn:auraUserData}BigNode
class BigNode
  @@schema_type = "BigNode"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")]], ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]], ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")]], ["position", ["Position", XSD::QName.new(nil, "position")]], ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")]], ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")]], ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")]], ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")]], ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")]], ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")]], ["userDefinedLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "userDefinedLabel")]], ["type", ["SOAP::SOAPQName", XSD::QName.new(nil, "type")]], ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")]], ["expansionState", ["SOAP::SOAPQName", XSD::QName.new(nil, "expansionState")]], ["isRoot", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isRoot")]], ["isOpen", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isOpen")]], ["canBeTrigger", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "canBeTrigger")]], ["canBeNegation", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "canBeNegation")]], ["canBeSalient", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "canBeSalient")]], ["subGraph", ["QNameArray", XSD::QName.new(nil, "subGraph")]]]

  attr_accessor :identifier
  attr_accessor :label
  attr_accessor :documentation
  attr_accessor :position
  attr_accessor :isVisible
  attr_accessor :isNeverVisible
  attr_accessor :isViewed
  attr_accessor :isDisplayed
  attr_accessor :isEnclosed
  attr_accessor :isNew
  attr_accessor :userDefinedLabel
  attr_accessor :type
  attr_accessor :comment
  attr_accessor :expansionState
  attr_accessor :isRoot
  attr_accessor :isOpen
  attr_accessor :canBeTrigger
  attr_accessor :canBeNegation
  attr_accessor :canBeSalient
  attr_accessor :subGraph

  def initialize(identifier = nil, label = nil, documentation = nil, position = nil, isVisible = nil, isNeverVisible = nil, isViewed = nil, isDisplayed = nil, isEnclosed = nil, isNew = nil, userDefinedLabel = nil, type = nil, comment = nil, expansionState = nil, isRoot = nil, isOpen = nil, canBeTrigger = nil, canBeNegation = nil, canBeSalient = nil, subGraph = nil)
    @identifier = identifier
    @label = label
    @documentation = documentation
    @position = position
    @isVisible = isVisible
    @isNeverVisible = isNeverVisible
    @isViewed = isViewed
    @isDisplayed = isDisplayed
    @isEnclosed = isEnclosed
    @isNew = isNew
    @userDefinedLabel = userDefinedLabel
    @type = type
    @comment = comment
    @expansionState = expansionState
    @isRoot = isRoot
    @isOpen = isOpen
    @canBeTrigger = canBeTrigger
    @canBeNegation = canBeNegation
    @canBeSalient = canBeSalient
    @subGraph = subGraph
  end
end

# {urn:auraUserData}ConstraintTermHolder
class ConstraintTermHolder
  @@schema_type = "ConstraintTermHolder"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["cardinalityConstraint", ["CardinalityConstraintTerm", XSD::QName.new(nil, "cardinalityConstraint")]], ["typeConstraint", ["TypeConstraintTerm", XSD::QName.new(nil, "typeConstraint")]]]

  attr_accessor :cardinalityConstraint
  attr_accessor :typeConstraint

  def initialize(cardinalityConstraint = nil, typeConstraint = nil)
    @cardinalityConstraint = cardinalityConstraint
    @typeConstraint = typeConstraint
  end
end

# {urn:auraUserData}ConstraintNodeAttributes
class ConstraintNodeAttributes
  @@schema_type = "ConstraintNodeAttributes"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")]], ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]], ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")]], ["position", ["Position", XSD::QName.new(nil, "position")]], ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")]], ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")]], ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")]], ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")]], ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")]], ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")]]]

  attr_accessor :identifier
  attr_accessor :label
  attr_accessor :documentation
  attr_accessor :position
  attr_accessor :isVisible
  attr_accessor :isNeverVisible
  attr_accessor :isViewed
  attr_accessor :isDisplayed
  attr_accessor :isEnclosed
  attr_accessor :isNew

  def initialize(identifier = nil, label = nil, documentation = nil, position = nil, isVisible = nil, isNeverVisible = nil, isViewed = nil, isDisplayed = nil, isEnclosed = nil, isNew = nil)
    @identifier = identifier
    @label = label
    @documentation = documentation
    @position = position
    @isVisible = isVisible
    @isNeverVisible = isNeverVisible
    @isViewed = isViewed
    @isDisplayed = isDisplayed
    @isEnclosed = isEnclosed
    @isNew = isNew
  end
end

# {urn:auraUserData}ConstraintEdgeAttributes
class ConstraintEdgeAttributes
  @@schema_type = "ConstraintEdgeAttributes"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")]], ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]], ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")]], ["position", ["Position", XSD::QName.new(nil, "position")]], ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")]], ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")]], ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")]], ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")]], ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")]], ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")]]]

  attr_accessor :identifier
  attr_accessor :label
  attr_accessor :documentation
  attr_accessor :position
  attr_accessor :isVisible
  attr_accessor :isNeverVisible
  attr_accessor :isViewed
  attr_accessor :isDisplayed
  attr_accessor :isEnclosed
  attr_accessor :isNew

  def initialize(identifier = nil, label = nil, documentation = nil, position = nil, isVisible = nil, isNeverVisible = nil, isViewed = nil, isDisplayed = nil, isEnclosed = nil, isNew = nil)
    @identifier = identifier
    @label = label
    @documentation = documentation
    @position = position
    @isVisible = isVisible
    @isNeverVisible = isNeverVisible
    @isViewed = isViewed
    @isDisplayed = isDisplayed
    @isEnclosed = isEnclosed
    @isNew = isNew
  end
end

# {urn:auraUserData}resultItem
class ResultItem
  @@schema_type = "resultItem"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["value", ["SOAP::SOAPQName", XSD::QName.new(nil, "value")]], ["entity", ["EntityType", XSD::QName.new(nil, "Entity")]], ["temporal_Entity", ["TemporalEntityType", XSD::QName.new(nil, "Temporal-Entity")]], ["event", ["EventType", XSD::QName.new(nil, "Event")]], ["role", ["RoleType", XSD::QName.new(nil, "Role")]], ["property_Value", ["PropertyValueType", XSD::QName.new(nil, "Property-Value")]], ["slot", ["SlotType", XSD::QName.new(nil, "Slot")]], ["instance", ["SOAP::SOAPQName", XSD::QName.new(nil, "instance")]]]

  attr_accessor :value
  attr_accessor :temporal_Entity
  attr_accessor :property_Value
  attr_accessor :instance

  def Entity
    @entity
  end

  def Entity=(value)
    @entity = value
  end

  def Event
    @event
  end

  def Event=(value)
    @event = value
  end

  def Role
    @role
  end

  def Role=(value)
    @role = value
  end

  def Slot
    @slot
  end

  def Slot=(value)
    @slot = value
  end

  def initialize(value = nil, entity = nil, temporal_Entity = nil, event = nil, role = nil, property_Value = nil, slot = nil, instance = nil)
    @value = value
    @entity = entity
    @temporal_Entity = temporal_Entity
    @event = event
    @role = role
    @property_Value = property_Value
    @slot = slot
    @instance = instance
  end
end

# {urn:auraUserData}Molecule
class Molecule
  @@schema_type = "Molecule"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["formula", ["Formula", XSD::QName.new(nil, "formula")]]]

  attr_accessor :formula

  def initialize(formula = nil)
    @formula = formula
  end
end

# {urn:auraUserData}ReactionParticipant
class ReactionParticipant
  @@schema_type = "ReactionParticipant"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")]], ["molecule", ["Molecule", XSD::QName.new(nil, "molecule")]], ["state", ["SOAP::SOAPQName", XSD::QName.new(nil, "state")]]]

  attr_accessor :count
  attr_accessor :molecule
  attr_accessor :state

  def initialize(count = nil, molecule = nil, state = nil)
    @count = count
    @molecule = molecule
    @state = state
  end
end

# {urn:auraUserData}ResultItemArray
class ResultItemArray < ::Array
  @@schema_type = "resultItem"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["ResultItem", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}Paraphrase
class Paraphrase
  @@schema_type = "Paraphrase"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["sentence", ["SOAP::SOAPString", XSD::QName.new(nil, "sentence")]], ["node", ["SOAP::SOAPQName", XSD::QName.new(nil, "node")]], ["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")]], ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")]], ["target", ["SOAP::SOAPQName", XSD::QName.new(nil, "target")]]]

  attr_accessor :sentence
  attr_accessor :node
  attr_accessor :source
  attr_accessor :relation
  attr_accessor :target

  def initialize(sentence = nil, node = nil, source = nil, relation = nil, target = nil)
    @sentence = sentence
    @node = node
    @source = source
    @relation = relation
    @target = target
  end
end

# {urn:auraUserData}NodeTable
class NodeTable
  @@schema_type = "NodeTable"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")]], ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]], ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")]], ["position", ["Position", XSD::QName.new(nil, "position")]], ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")]], ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")]], ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")]], ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")]], ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")]], ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")]], ["node", ["SOAP::SOAPQName", XSD::QName.new(nil, "node")]], ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")]], ["table", ["Table", XSD::QName.new(nil, "table")]]]

  attr_accessor :identifier
  attr_accessor :label
  attr_accessor :documentation
  attr_accessor :position
  attr_accessor :isVisible
  attr_accessor :isNeverVisible
  attr_accessor :isViewed
  attr_accessor :isDisplayed
  attr_accessor :isEnclosed
  attr_accessor :isNew
  attr_accessor :node
  attr_accessor :identifier2
  attr_accessor :table

  def initialize(identifier = nil, label = nil, documentation = nil, position = nil, isVisible = nil, isNeverVisible = nil, isViewed = nil, isDisplayed = nil, isEnclosed = nil, isNew = nil, node = nil, identifier2 = nil, table = nil)
    @identifier = identifier
    @label = label
    @documentation = documentation
    @position = position
    @isVisible = isVisible
    @isNeverVisible = isNeverVisible
    @isViewed = isViewed
    @isDisplayed = isDisplayed
    @isEnclosed = isEnclosed
    @isNew = isNew
    @node = node
    @identifier2 = identifier2
    @table = table
  end
end

# {urn:auraUserData}Equation
class Equation
  @@schema_type = "Equation"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")]], ["equation", ["NAryNode", XSD::QName.new(nil, "equation")]], ["bindings", ["QNameTable", XSD::QName.new(nil, "bindings")]]]

  attr_accessor :identifier
  attr_accessor :equation
  attr_accessor :bindings

  def initialize(identifier = nil, equation = nil, bindings = nil)
    @identifier = identifier
    @equation = equation
    @bindings = bindings
  end
end

# {urn:auraUserData}Constraint
class Constraint
  @@schema_type = "Constraint"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["constraintTerm", ["ConstraintTermHolder", XSD::QName.new(nil, "constraintTerm")]], ["node", ["SOAP::SOAPQName", XSD::QName.new(nil, "node")]], ["slot", ["SOAP::SOAPQName", XSD::QName.new(nil, "slot")]], ["constrainedNodes", ["QNameArray", XSD::QName.new(nil, "constrainedNodes")]], ["nodeAttributes", ["ConstraintNodeAttributes", XSD::QName.new(nil, "nodeAttributes")]], ["edgeAttributes", ["ConstraintEdgeAttributes", XSD::QName.new(nil, "edgeAttributes")]]]

  attr_accessor :constraintTerm
  attr_accessor :node
  attr_accessor :slot
  attr_accessor :constrainedNodes
  attr_accessor :nodeAttributes
  attr_accessor :edgeAttributes

  def initialize(constraintTerm = nil, node = nil, slot = nil, constrainedNodes = nil, nodeAttributes = nil, edgeAttributes = nil)
    @constraintTerm = constraintTerm
    @node = node
    @slot = slot
    @constrainedNodes = constrainedNodes
    @nodeAttributes = nodeAttributes
    @edgeAttributes = edgeAttributes
  end
end

# {urn:auraUserData}Edge
class Edge
  @@schema_type = "Edge"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")]], ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]], ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")]], ["position", ["Position", XSD::QName.new(nil, "position")]], ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")]], ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")]], ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")]], ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")]], ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")]], ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")]], ["gaf", ["GAF", XSD::QName.new(nil, "gaf")]], ["condition", ["LogicalFormula", XSD::QName.new(nil, "condition")]], ["isQuery", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isQuery")]], ["paraphrase", ["SOAP::SOAPInteger", XSD::QName.new(nil, "paraphrase")]], ["supports", ["QNameArray", XSD::QName.new(nil, "supports")]], ["isInterface", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isInterface")]]]

  attr_accessor :identifier
  attr_accessor :label
  attr_accessor :documentation
  attr_accessor :position
  attr_accessor :isVisible
  attr_accessor :isNeverVisible
  attr_accessor :isViewed
  attr_accessor :isDisplayed
  attr_accessor :isEnclosed
  attr_accessor :isNew
  attr_accessor :gaf
  attr_accessor :condition
  attr_accessor :isQuery
  attr_accessor :paraphrase
  attr_accessor :supports
  attr_accessor :isInterface

  def initialize(identifier = nil, label = nil, documentation = nil, position = nil, isVisible = nil, isNeverVisible = nil, isViewed = nil, isDisplayed = nil, isEnclosed = nil, isNew = nil, gaf = nil, condition = nil, isQuery = nil, paraphrase = nil, supports = nil, isInterface = nil)
    @identifier = identifier
    @label = label
    @documentation = documentation
    @position = position
    @isVisible = isVisible
    @isNeverVisible = isNeverVisible
    @isViewed = isViewed
    @isDisplayed = isDisplayed
    @isEnclosed = isEnclosed
    @isNew = isNew
    @gaf = gaf
    @condition = condition
    @isQuery = isQuery
    @paraphrase = paraphrase
    @supports = supports
    @isInterface = isInterface
  end
end

# {urn:auraUserData}PropertyValue
class PropertyValue
  @@schema_type = "PropertyValue"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")]], ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]], ["type", ["SOAP::SOAPQName", XSD::QName.new(nil, "type")]], ["unit", ["SOAP::SOAPQName", XSD::QName.new(nil, "unit")]], ["magnitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "magnitude")]], ["scale", ["SOAP::SOAPQName", XSD::QName.new(nil, "scale")]]]

  attr_accessor :identifier
  attr_accessor :label
  attr_accessor :type
  attr_accessor :unit
  attr_accessor :magnitude
  attr_accessor :scale

  def initialize(identifier = nil, label = nil, type = nil, unit = nil, magnitude = nil, scale = nil)
    @identifier = identifier
    @label = label
    @type = type
    @unit = unit
    @magnitude = magnitude
    @scale = scale
  end
end

# {urn:auraUserData}GenericNode
class GenericNode
  @@schema_type = "GenericNode"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["basicNode", ["BasicNode", XSD::QName.new(nil, "basicNode")]], ["bigNode", ["BigNode", XSD::QName.new(nil, "bigNode")]]]

  attr_accessor :basicNode
  attr_accessor :bigNode

  def initialize(basicNode = nil, bigNode = nil)
    @basicNode = basicNode
    @bigNode = bigNode
  end
end

# {urn:auraUserData}UIAttributesForNode
class UIAttributesForNode
  @@schema_type = "UIAttributesForNode"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")]], ["position", ["Position", XSD::QName.new(nil, "position")]], ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")]], ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")]]]

  attr_accessor :name
  attr_accessor :position
  attr_accessor :isVisible
  attr_accessor :isNeverVisible

  def initialize(name = nil, position = nil, isVisible = nil, isNeverVisible = nil)
    @name = name
    @position = position
    @isVisible = isVisible
    @isNeverVisible = isNeverVisible
  end
end

# {urn:auraUserData}UIAttributesForEdge
class UIAttributesForEdge
  @@schema_type = "UIAttributesForEdge"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")]], ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")]], ["targets", ["QNameArray", XSD::QName.new(nil, "targets")]], ["position", ["Position", XSD::QName.new(nil, "position")]], ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")]], ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")]]]

  attr_accessor :source
  attr_accessor :relation
  attr_accessor :targets
  attr_accessor :position
  attr_accessor :isVisible
  attr_accessor :isNeverVisible

  def initialize(source = nil, relation = nil, targets = nil, position = nil, isVisible = nil, isNeverVisible = nil)
    @source = source
    @relation = relation
    @targets = targets
    @position = position
    @isVisible = isVisible
    @isNeverVisible = isNeverVisible
  end
end

# {urn:auraUserData}UIAttributesForTable
class UIAttributesForTable
  @@schema_type = "UIAttributesForTable"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")]], ["position", ["Position", XSD::QName.new(nil, "position")]], ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")]], ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")]]]

  attr_accessor :name
  attr_accessor :position
  attr_accessor :isVisible
  attr_accessor :isNeverVisible

  def initialize(name = nil, position = nil, isVisible = nil, isNeverVisible = nil)
    @name = name
    @position = position
    @isVisible = isVisible
    @isNeverVisible = isNeverVisible
  end
end

# {urn:auraUserData}LMapArgumentValue
class LMapArgumentValue
  @@schema_type = "LMapArgumentValue"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")]], ["conceptList", ["QNameArray", XSD::QName.new(nil, "conceptList")]], ["gaf", ["GAF", XSD::QName.new(nil, "gaf")]], ["gafList", ["ArrayOfGAFs", XSD::QName.new(nil, "gafList")]], ["stringValue", ["SOAP::SOAPString", XSD::QName.new(nil, "stringValue")]], ["intValue", ["SOAP::SOAPInt", XSD::QName.new(nil, "intValue")]], ["boolValue", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "boolValue")]], ["operatorTree", ["NAryNode", XSD::QName.new(nil, "operatorTree")]], ["nameMap", ["QNameTable", XSD::QName.new(nil, "nameMap")]], ["constraintTerms", ["ArrayOfConstraintTerms", XSD::QName.new(nil, "constraintTerms")]], ["logicalFormula", ["LogicalFormula", XSD::QName.new(nil, "logicalFormula")]], ["propertyValues", ["ArrayOfValues", XSD::QName.new(nil, "propertyValues")]], ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")]], ["table", ["Table", XSD::QName.new(nil, "table")]], ["synonyms", ["VocabularyArray", XSD::QName.new(nil, "synonyms")]]]

  attr_accessor :concept
  attr_accessor :conceptList
  attr_accessor :gaf
  attr_accessor :gafList
  attr_accessor :stringValue
  attr_accessor :intValue
  attr_accessor :boolValue
  attr_accessor :operatorTree
  attr_accessor :nameMap
  attr_accessor :constraintTerms
  attr_accessor :logicalFormula
  attr_accessor :propertyValues
  attr_accessor :documentation
  attr_accessor :table
  attr_accessor :synonyms

  def initialize(concept = nil, conceptList = nil, gaf = nil, gafList = nil, stringValue = nil, intValue = nil, boolValue = nil, operatorTree = nil, nameMap = nil, constraintTerms = nil, logicalFormula = nil, propertyValues = nil, documentation = nil, table = nil, synonyms = nil)
    @concept = concept
    @conceptList = conceptList
    @gaf = gaf
    @gafList = gafList
    @stringValue = stringValue
    @intValue = intValue
    @boolValue = boolValue
    @operatorTree = operatorTree
    @nameMap = nameMap
    @constraintTerms = constraintTerms
    @logicalFormula = logicalFormula
    @propertyValues = propertyValues
    @documentation = documentation
    @table = table
    @synonyms = synonyms
  end
end

# {urn:auraUserData}ConceptMapDiff
class ConceptMapDiff
  @@schema_type = "ConceptMapDiff"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["unification", ["UnificationDiff", XSD::QName.new(nil, "unification")]], ["addedFact", ["SOAP::SOAPQName", XSD::QName.new(nil, "addedFact")]], ["addedIndividual", ["SOAP::SOAPQName", XSD::QName.new(nil, "addedIndividual")]], ["deletedFact", ["SOAP::SOAPQName", XSD::QName.new(nil, "deletedFact")]], ["deletedIndividual", ["SOAP::SOAPQName", XSD::QName.new(nil, "deletedIndividual")]]]

  attr_accessor :unification
  attr_accessor :addedFact
  attr_accessor :addedIndividual
  attr_accessor :deletedFact
  attr_accessor :deletedIndividual

  def initialize(unification = nil, addedFact = nil, addedIndividual = nil, deletedFact = nil, deletedIndividual = nil)
    @unification = unification
    @addedFact = addedFact
    @addedIndividual = addedIndividual
    @deletedFact = deletedFact
    @deletedIndividual = deletedIndividual
  end
end

# {urn:auraUserData}CardinalValueScale
class CardinalValueScale
  @@schema_type = "CardinalValueScale"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")]], ["isSpecializable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isSpecializable")]]]

  attr_accessor :name
  attr_accessor :isSpecializable

  def initialize(name = nil, isSpecializable = nil)
    @name = name
    @isSpecializable = isSpecializable
  end
end

# {urn:auraUserData}CategoricalValueScale
class CategoricalValueScale
  @@schema_type = "CategoricalValueScale"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["values", ["QNameArray", XSD::QName.new(nil, "values")]]]

  attr_accessor :values

  def initialize(values = nil)
    @values = values
  end
end

# {urn:auraUserData}ScalarValueScale
class ScalarValueScale
  @@schema_type = "ScalarValueScale"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")]], ["domains", ["QNameArray", XSD::QName.new(nil, "domains")]], ["values", ["QNameArray", XSD::QName.new(nil, "values")]]]

  attr_accessor :name
  attr_accessor :domains
  attr_accessor :values

  def initialize(name = nil, domains = nil, values = nil)
    @name = name
    @domains = domains
    @values = values
  end
end

# {urn:auraUserData}FormulaComponent
class FormulaComponent
  @@schema_type = "FormulaComponent"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["atomArray", ["AtomArray", XSD::QName.new(nil, "atomArray")]], ["formula", ["Formula", XSD::QName.new(nil, "formula")]]]

  attr_accessor :atomArray
  attr_accessor :formula

  def initialize(atomArray = nil, formula = nil)
    @atomArray = atomArray
    @formula = formula
  end
end

# {urn:auraUserData}FormulaComponentList
class FormulaComponentList < ::Array
  @@schema_type = "FormulaComponent"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["FormulaComponent", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}DirtParaphrase
class DirtParaphrase
  @@schema_type = "DirtParaphrase"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["paraphraseID", ["SOAP::SOAPString", XSD::QName.new(nil, "paraphraseID")]], ["paraphraseString", ["SOAP::SOAPString", XSD::QName.new(nil, "paraphraseString")]], ["blockedP", ["SOAP::SOAPQName", XSD::QName.new(nil, "blockedP")]]]

  attr_accessor :paraphraseID
  attr_accessor :paraphraseString
  attr_accessor :blockedP

  def initialize(paraphraseID = nil, paraphraseString = nil, blockedP = nil)
    @paraphraseID = paraphraseID
    @paraphraseString = paraphraseString
    @blockedP = blockedP
  end
end

# {urn:auraUserData}WordSense
class WordSense
  @@schema_type = "WordSense"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")]], ["definition", ["SOAP::SOAPString", XSD::QName.new(nil, "definition")]]]

  attr_accessor :concept
  attr_accessor :definition

  def initialize(concept = nil, definition = nil)
    @concept = concept
    @definition = definition
  end
end

# {urn:auraUserData}QuestionUninterpretableType
class QuestionUninterpretableType
  @@schema_type = "QuestionUninterpretableType"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["html", ["SOAP::SOAPString", XSD::QName.new(nil, "html")]], ["partialCmap", ["QuestionConceptMap", XSD::QName.new(nil, "partialCmap")]]]

  attr_accessor :html
  attr_accessor :partialCmap

  def initialize(html = nil, partialCmap = nil)
    @html = html
    @partialCmap = partialCmap
  end
end

# {urn:auraUserData}WordConceptMap
class WordConceptMap
  @@schema_type = "WordConceptMap"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["word", ["SOAP::SOAPString", XSD::QName.new(nil, "word")]], ["partOfSpeech", ["SOAP::SOAPQName", XSD::QName.new(nil, "partOfSpeech")]], ["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")]]]

  attr_accessor :word
  attr_accessor :partOfSpeech
  attr_accessor :concept

  def initialize(word = nil, partOfSpeech = nil, concept = nil)
    @word = word
    @partOfSpeech = partOfSpeech
    @concept = concept
  end
end

# {urn:auraUserData}RelationInformation
class RelationInformation
  @@schema_type = "RelationInformation"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")]], ["arity", ["SOAP::SOAPInt", XSD::QName.new(nil, "arity")]]]

  attr_accessor :relation
  attr_accessor :arity

  def initialize(relation = nil, arity = nil)
    @relation = relation
    @arity = arity
  end
end

# {urn:auraUserData}ConnectRelationInvisibleType
class ConnectRelationInvisibleType
  @@schema_type = "ConnectRelationInvisibleType"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")]], ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")]], ["target", ["SOAP::SOAPQName", XSD::QName.new(nil, "target")]], ["nodeToExpand", ["SOAP::SOAPQName", XSD::QName.new(nil, "nodeToExpand")]]]

  attr_accessor :source
  attr_accessor :relation
  attr_accessor :target
  attr_accessor :nodeToExpand

  def initialize(source = nil, relation = nil, target = nil, nodeToExpand = nil)
    @source = source
    @relation = relation
    @target = target
    @nodeToExpand = nodeToExpand
  end
end

# {urn:auraUserData}InheritedContentModificationType
class InheritedContentModificationType
  @@schema_type = "InheritedContentModificationType"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["operation", ["SOAP::SOAPString", XSD::QName.new(nil, "operation")]], ["content", ["StringArray", XSD::QName.new(nil, "content")]], ["cause", ["SOAP::SOAPString", XSD::QName.new(nil, "cause")]], ["sourceAxiomClasses", ["QNameArray", XSD::QName.new(nil, "sourceAxiomClasses")]], ["sourcePrototypeClasses", ["QNameArray", XSD::QName.new(nil, "sourcePrototypeClasses")]]]

  attr_accessor :operation
  attr_accessor :content
  attr_accessor :cause
  attr_accessor :sourceAxiomClasses
  attr_accessor :sourcePrototypeClasses

  def initialize(operation = nil, content = nil, cause = nil, sourceAxiomClasses = nil, sourcePrototypeClasses = nil)
    @operation = operation
    @content = content
    @cause = cause
    @sourceAxiomClasses = sourceAxiomClasses
    @sourcePrototypeClasses = sourcePrototypeClasses
  end
end

# {urn:auraUserData}RelationOption
class RelationOption
  @@schema_type = "RelationOption"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")]], ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]]

  attr_accessor :relation
  attr_accessor :description

  def initialize(relation = nil, description = nil)
    @relation = relation
    @description = description
  end
end

# {urn:auraUserData}ValidValueScales
class ValidValueScales
  @@schema_type = "ValidValueScales"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["cardinal", ["CardinalValueScale", XSD::QName.new(nil, "cardinal")]], ["categorical", ["CategoricalValueScale", XSD::QName.new(nil, "categorical")]], ["scalar", ["ScalarValueScale", XSD::QName.new(nil, "scalar")]]]

  attr_accessor :cardinal
  attr_accessor :categorical
  attr_accessor :scalar

  def initialize(cardinal = nil, categorical = nil, scalar = nil)
    @cardinal = cardinal
    @categorical = categorical
    @scalar = scalar
  end
end

# {urn:auraUserData}TextbookLink
class TextbookLink
  @@schema_type = "TextbookLink"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["section", ["SOAP::SOAPString", XSD::QName.new(nil, "section")]], ["sentenceID", ["SentenceIdentifier", XSD::QName.new(nil, "sentenceID")]], ["concept", ["SOAP::SOAPString", XSD::QName.new(nil, "concept")]], ["triple", ["StringArray", XSD::QName.new(nil, "triple")]], ["iD", ["SOAP::SOAPString", XSD::QName.new(nil, "ID")]]]

  attr_accessor :section
  attr_accessor :sentenceID
  attr_accessor :concept
  attr_accessor :triple

  def ID
    @iD
  end

  def ID=(value)
    @iD = value
  end

  def initialize(section = nil, sentenceID = nil, concept = nil, triple = nil, iD = nil)
    @section = section
    @sentenceID = sentenceID
    @concept = concept
    @triple = triple
    @iD = iD
  end
end

# {urn:auraUserData}PartitionData
class PartitionData
  @@schema_type = "PartitionData"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["id", ["SOAP::SOAPQName", XSD::QName.new(nil, "id")]], ["members", ["QNameArray", XSD::QName.new(nil, "members")]]]

  attr_accessor :id
  attr_accessor :members

  def initialize(id = nil, members = nil)
    @id = id
    @members = members
  end
end

# {urn:auraUserData}PartitionEdit
class PartitionEdit
  @@schema_type = "PartitionEdit"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["operation", ["SOAP::SOAPQName", XSD::QName.new(nil, "operation")]], ["id", ["SOAP::SOAPQName", XSD::QName.new(nil, "id")]], ["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")]], ["members", ["QNameArray", XSD::QName.new(nil, "members")]]]

  attr_accessor :operation
  attr_accessor :id
  attr_accessor :concept
  attr_accessor :members

  def initialize(operation = nil, id = nil, concept = nil, members = nil)
    @operation = operation
    @id = id
    @concept = concept
    @members = members
  end
end

# {urn:auraUserData}ConceptMapDiffsArray
class ConceptMapDiffsArray < ::Array
  @@schema_type = "ConceptMapDiff"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["ConceptMapDiff", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}LMapArgument
class LMapArgument
  @@schema_type = "LMapArgument"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]], ["value", ["LMapArgumentValue", XSD::QName.new(nil, "value")]]]

  attr_accessor :name
  attr_accessor :value

  def initialize(name = nil, value = nil)
    @name = name
    @value = value
  end
end

# {urn:auraUserData}UIAttributes
class UIAttributes
  @@schema_type = "UIAttributes"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["node", ["UIAttributesForNode", XSD::QName.new(nil, "node")]], ["edge", ["UIAttributesForEdge", XSD::QName.new(nil, "edge")]], ["table", ["UIAttributesForTable", XSD::QName.new(nil, "table")]]]

  attr_accessor :node
  attr_accessor :edge
  attr_accessor :table

  def initialize(node = nil, edge = nil, table = nil)
    @node = node
    @edge = edge
    @table = table
  end
end

# {urn:auraUserData}ArrayOfNodes
class ArrayOfNodes < ::Array
  @@schema_type = "GenericNode"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["GenericNode", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ArrayOfValues
class ArrayOfValues < ::Array
  @@schema_type = "PropertyValue"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["PropertyValue", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ArrayOfEdges
class ArrayOfEdges < ::Array
  @@schema_type = "Edge"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["Edge", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ArrayOfConstraints
class ArrayOfConstraints < ::Array
  @@schema_type = "Constraint"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["Constraint", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ArrayOfEquations
class ArrayOfEquations < ::Array
  @@schema_type = "Equation"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["Equation", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ArrayOfTables
class ArrayOfTables < ::Array
  @@schema_type = "NodeTable"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["NodeTable", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ArrayOfParaphrases
class ArrayOfParaphrases < ::Array
  @@schema_type = "Paraphrase"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["Paraphrase", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ArrayOfSentences
class ArrayOfSentences < ::Array
  @@schema_type = "string"
  @@schema_ns = "http://www.w3.org/2001/XMLSchema"
  @@schema_element = [["item", ["String", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}GAF
class GAF
  @@schema_type = "GAF"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")]], ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")]], ["targets", ["QNameArray", XSD::QName.new(nil, "targets")]]]

  attr_accessor :source
  attr_accessor :relation
  attr_accessor :targets

  def initialize(source = nil, relation = nil, targets = nil)
    @source = source
    @relation = relation
    @targets = targets
  end
end

# {urn:auraUserData}termResult
class TermResult
  @@schema_type = "termResult"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["term", ["SOAP::SOAPString", XSD::QName.new(nil, "term")]], ["exact", ["ResultItemArray", XSD::QName.new(nil, "exact")]], ["partial", ["ResultItemArray", XSD::QName.new(nil, "partial")]], ["semantic", ["ResultItemArray", XSD::QName.new(nil, "semantic")]]]

  attr_accessor :term
  attr_accessor :exact
  attr_accessor :partial
  attr_accessor :semantic

  def initialize(term = nil, exact = nil, partial = nil, semantic = nil)
    @term = term
    @exact = exact
    @partial = partial
    @semantic = semantic
  end
end

# {urn:auraUserData}ReactionParticipantList
class ReactionParticipantList < ::Array
  @@schema_type = "ReactionParticipant"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["ReactionParticipant", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}documentSelection
class DocumentSelection
  @@schema_type = "documentSelection"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["selectionName", ["SOAP::SOAPQName", XSD::QName.new(nil, "selectionName")]], ["selectionType", ["SOAP::SOAPQName", XSD::QName.new(nil, "selectionType")]], ["selectionURI", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "selectionURI")]], ["selectionPath", ["SOAP::SOAPString", XSD::QName.new(nil, "selectionPath")]], ["selectionStart", ["SOAP::SOAPInt", XSD::QName.new(nil, "selectionStart")]], ["selectionEnd", ["SOAP::SOAPInt", XSD::QName.new(nil, "selectionEnd")]], ["selectionSummary", ["SOAP::SOAPString", XSD::QName.new(nil, "selectionSummary")]]]

  attr_accessor :selectionName
  attr_accessor :selectionType
  attr_accessor :selectionURI
  attr_accessor :selectionPath
  attr_accessor :selectionStart
  attr_accessor :selectionEnd
  attr_accessor :selectionSummary

  def initialize(selectionName = nil, selectionType = nil, selectionURI = nil, selectionPath = nil, selectionStart = nil, selectionEnd = nil, selectionSummary = nil)
    @selectionName = selectionName
    @selectionType = selectionType
    @selectionURI = selectionURI
    @selectionPath = selectionPath
    @selectionStart = selectionStart
    @selectionEnd = selectionEnd
    @selectionSummary = selectionSummary
  end
end

# {urn:auraUserData}QNameArray
class QNameArray < ::Array
  @@schema_type = "QName"
  @@schema_ns = "http://www.w3.org/2001/XMLSchema"
  @@schema_element = [["item", ["String", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}DocumentSelectionArray
class DocumentSelectionArray < ::Array
  @@schema_type = "documentSelection"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["DocumentSelection", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}Reaction
class Reaction
  @@schema_type = "Reaction"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["reactantList", ["ReactionParticipantList", XSD::QName.new(nil, "reactantList")]], ["productList", ["ReactionParticipantList", XSD::QName.new(nil, "productList")]], ["direction", ["SOAP::SOAPQName", XSD::QName.new(nil, "direction")]]]

  attr_accessor :reactantList
  attr_accessor :productList
  attr_accessor :direction

  def initialize(reactantList = nil, productList = nil, direction = nil)
    @reactantList = reactantList
    @productList = productList
    @direction = direction
  end
end

# {urn:auraUserData}StringArray
class StringArray < ::Array
  @@schema_type = "string"
  @@schema_ns = "http://www.w3.org/2001/XMLSchema"
  @@schema_element = [["item", ["String", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ArrayOfTermResult
class ArrayOfTermResult < ::Array
  @@schema_type = "termResult"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["TermResult", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ArrayOfGAFs
class ArrayOfGAFs < ::Array
  @@schema_type = "GAF"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["GAF", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}QuestionConceptMap
class QuestionConceptMap
  @@schema_type = "QuestionConceptMap"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["conceptMap", ["ConceptMap", XSD::QName.new(nil, "conceptMap")]], ["paraphrases", ["ArrayOfParaphrases", XSD::QName.new(nil, "paraphrases")]], ["sources", ["ArrayOfSentences", XSD::QName.new(nil, "sources")]]]

  attr_accessor :conceptMap
  attr_accessor :paraphrases
  attr_accessor :sources

  def initialize(conceptMap = nil, paraphrases = nil, sources = nil)
    @conceptMap = conceptMap
    @paraphrases = paraphrases
    @sources = sources
  end
end

# {urn:auraUserData}ArrayOfViewpoints
class ArrayOfViewpoints < ::Array
  @@schema_type = "Viewpoint"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["Viewpoint", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ConceptMap
class ConceptMap
  @@schema_type = "ConceptMap"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")]], ["isEditable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEditable")]], ["isDisconnected", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisconnected")]], ["nodes", ["ArrayOfNodes", XSD::QName.new(nil, "nodes")]], ["values", ["ArrayOfValues", XSD::QName.new(nil, "values")]], ["edges", ["ArrayOfEdges", XSD::QName.new(nil, "edges")]], ["constraints", ["ArrayOfConstraints", XSD::QName.new(nil, "constraints")]], ["equations", ["ArrayOfEquations", XSD::QName.new(nil, "equations")]], ["tables", ["ArrayOfTables", XSD::QName.new(nil, "tables")]], ["knockonUnifications", ["QNameArray", XSD::QName.new(nil, "knockonUnifications")]], ["textbookLinkArray", ["TextbookLinkArray", XSD::QName.new(nil, "textbookLinkArray")]]]

  attr_accessor :name
  attr_accessor :isEditable
  attr_accessor :isDisconnected
  attr_accessor :nodes
  attr_accessor :values
  attr_accessor :edges
  attr_accessor :constraints
  attr_accessor :equations
  attr_accessor :tables
  attr_accessor :knockonUnifications
  attr_accessor :textbookLinkArray

  def initialize(name = nil, isEditable = nil, isDisconnected = nil, nodes = nil, values = nil, edges = nil, constraints = nil, equations = nil, tables = nil, knockonUnifications = nil, textbookLinkArray = nil)
    @name = name
    @isEditable = isEditable
    @isDisconnected = isDisconnected
    @nodes = nodes
    @values = values
    @edges = edges
    @constraints = constraints
    @equations = equations
    @tables = tables
    @knockonUnifications = knockonUnifications
    @textbookLinkArray = textbookLinkArray
  end
end

# {urn:auraUserData}UIAttributeArray
class UIAttributeArray < ::Array
  @@schema_type = "UIAttributes"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["UIAttributes", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}LMapArgumentTable
class LMapArgumentTable < ::Array
  @@schema_type = "LMapArgument"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["LMapArgument", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ConceptMapEditSummary
class ConceptMapEditSummary
  @@schema_type = "ConceptMapEditSummary"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["initial", ["ConceptMap", XSD::QName.new(nil, "initial")]], ["final", ["ConceptMap", XSD::QName.new(nil, "final")]], ["differences", ["ConceptMapDiffsArray", XSD::QName.new(nil, "differences")]]]

  attr_accessor :initial
  attr_accessor :final
  attr_accessor :differences

  def initialize(initial = nil, final = nil, differences = nil)
    @initial = initial
    @final = final
    @differences = differences
  end
end

# {urn:auraUserData}Viewpoint
class Viewpoint
  @@schema_type = "Viewpoint"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")]], ["conceptMap", ["ConceptMap", XSD::QName.new(nil, "conceptMap")]], ["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")]], ["setupEdges", ["QNameArray", XSD::QName.new(nil, "setupEdges")]], ["setupNodes", ["QNameArray", XSD::QName.new(nil, "setupNodes")]], ["queryEdges", ["QNameArray", XSD::QName.new(nil, "queryEdges")]], ["queryNodes", ["QNameArray", XSD::QName.new(nil, "queryNodes")]], ["conceptEdges", ["QNameArray", XSD::QName.new(nil, "conceptEdges")]], ["conceptNodes", ["QNameArray", XSD::QName.new(nil, "conceptNodes")]], ["otherEdges", ["QNameArray", XSD::QName.new(nil, "otherEdges")]], ["otherNodes", ["QNameArray", XSD::QName.new(nil, "otherNodes")]]]

  attr_accessor :identifier
  attr_accessor :conceptMap
  attr_accessor :concept
  attr_accessor :setupEdges
  attr_accessor :setupNodes
  attr_accessor :queryEdges
  attr_accessor :queryNodes
  attr_accessor :conceptEdges
  attr_accessor :conceptNodes
  attr_accessor :otherEdges
  attr_accessor :otherNodes

  def initialize(identifier = nil, conceptMap = nil, concept = nil, setupEdges = nil, setupNodes = nil, queryEdges = nil, queryNodes = nil, conceptEdges = nil, conceptNodes = nil, otherEdges = nil, otherNodes = nil)
    @identifier = identifier
    @conceptMap = conceptMap
    @concept = concept
    @setupEdges = setupEdges
    @setupNodes = setupNodes
    @queryEdges = queryEdges
    @queryNodes = queryNodes
    @conceptEdges = conceptEdges
    @conceptNodes = conceptNodes
    @otherEdges = otherEdges
    @otherNodes = otherNodes
  end
end

# {urn:auraUserData}PartitionEditsArray
class PartitionEditsArray < ::Array
  @@schema_type = "PartitionEdit"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["PartitionEdit", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}PartitionsArray
class PartitionsArray < ::Array
  @@schema_type = "PartitionData"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["PartitionData", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}TextbookLinkArray
class TextbookLinkArray < ::Array
  @@schema_type = "TextbookLink"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["TextbookLink", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ValidValuesArray
class ValidValuesArray < ::Array
  @@schema_type = "ValidValueScales"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["ValidValueScales", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ArrayOfRelationOptions
class ArrayOfRelationOptions < ::Array
  @@schema_type = "RelationOption"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["RelationOption", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}SOAPServerType
class SOAPServerType
  @@schema_type = "SOAPServerType"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["el0", ["ConnectRelationInvisibleType", XSD::QName.new(nil, "el0")]], ["el1", ["InheritedContentModificationType", XSD::QName.new(nil, "el1")]]]

  attr_accessor :el0
  attr_accessor :el1

  def initialize(el0 = nil, el1 = nil)
    @el0 = el0
    @el1 = el1
  end
end

# {urn:auraUserData}SentenceIdentifier
class SentenceIdentifier
  @@schema_type = "SentenceIdentifier"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["paragraphID", ["SOAP::SOAPString", XSD::QName.new(nil, "paragraphID")]], ["sentenceHash", ["SOAP::SOAPString", XSD::QName.new(nil, "sentenceHash")]]]

  attr_accessor :paragraphID
  attr_accessor :sentenceHash

  def initialize(paragraphID = nil, sentenceHash = nil)
    @paragraphID = paragraphID
    @sentenceHash = sentenceHash
  end
end

# {urn:auraUserData}SOAPServerType002
class SOAPServerType002 < ::Array
  @@schema_type = "RelationInformation"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["RelationInformation", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}VocabularyArray
class VocabularyArray < ::Array
  @@schema_type = "WordConceptMap"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["WordConceptMap", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}SOAPServerType003
class SOAPServerType003
  @@schema_type = "SOAPServerType003"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["el0", ["QuestionUninterpretableType", XSD::QName.new(nil, "el0")]]]

  attr_accessor :el0

  def initialize(el0 = nil)
    @el0 = el0
  end
end

# {urn:auraUserData}ArrayOfWordSenses
class ArrayOfWordSenses < ::Array
  @@schema_type = "WordSense"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["WordSense", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}ArrayOfDirtParaphrases
class ArrayOfDirtParaphrases < ::Array
  @@schema_type = "DirtParaphrase"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["item", ["DirtParaphrase", XSD::QName.new(nil, "item")]]]
end

# {urn:auraUserData}Formula
class Formula
  @@schema_type = "Formula"
  @@schema_ns = "urn:auraUserData"
  @@schema_element = [["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")]], ["formalCharge", ["SOAP::SOAPInt", XSD::QName.new(nil, "formalCharge")]], ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")]], ["formulaComponents", ["FormulaComponentList", XSD::QName.new(nil, "formulaComponents")]]]

  attr_accessor :title
  attr_accessor :formalCharge
  attr_accessor :count
  attr_accessor :formulaComponents

  def initialize(title = nil, formalCharge = nil, count = nil, formulaComponents = nil)
    @title = title
    @formalCharge = formalCharge
    @count = count
    @formulaComponents = formulaComponents
  end
end
