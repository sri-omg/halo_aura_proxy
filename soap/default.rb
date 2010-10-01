require 'xsd/qname'

# {urn:auraUserData}TableCell
#   m_class - SOAP::SOAPQName
#   value - PropertyValue
class TableCell
  attr_accessor :value

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def initialize(v_class = nil, value = nil)
    @v_class = v_class
    @value = value
  end
end

# {urn:auraUserData}Literal
#   source - SOAP::SOAPQName
#   targets - QNameArray
#   relation - SOAP::SOAPQName
#   isNegated - SOAP::SOAPBoolean
class Literal
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

# {urn:auraUserData}NAryArgument
#   var - SOAP::SOAPQName
#   ival - SOAP::SOAPInt
#   fval - SOAP::SOAPFloat
#   subnode - NAryNode
class NAryArgument
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

# {urn:auraUserData}TableColumn
#   header - SOAP::SOAPQName
#   order - SOAP::SOAPInt
class TableColumn
  attr_accessor :header
  attr_accessor :order

  def initialize(header = nil, order = nil)
    @header = header
    @order = order
  end
end

# {urn:auraUserData}clibClass
#   value - SOAP::SOAPQName
#   entity - EntityType
#   event - EventType
#   role - RoleType
#   property_Value - PropertyValueType
class ClibClass
  attr_accessor :value
  attr_accessor :entity
  attr_accessor :event
  attr_accessor :role
  attr_accessor :property_Value

  def initialize(value = nil, entity = nil, event = nil, role = nil, property_Value = nil)
    @value = value
    @entity = entity
    @event = event
    @role = role
    @property_Value = property_Value
  end
end

# {urn:auraUserData}templateInstance
#   instance - SOAP::SOAPQName
#   description - SOAP::SOAPString
class TemplateInstance
  attr_accessor :instance
  attr_accessor :description

  def initialize(instance = nil, description = nil)
    @instance = instance
    @description = description
  end
end

# {urn:auraUserData}Entity-Type
#   m_class - SOAP::SOAPQName
#   templateInstance - TemplateInstance
class EntityType
  attr_accessor :templateInstance

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def initialize(v_class = nil, templateInstance = nil)
    @v_class = v_class
    @templateInstance = templateInstance
  end
end

# {urn:auraUserData}Event-Type
#   m_class - SOAP::SOAPQName
#   templateInstance - TemplateInstance
class EventType
  attr_accessor :templateInstance

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def initialize(v_class = nil, templateInstance = nil)
    @v_class = v_class
    @templateInstance = templateInstance
  end
end

# {urn:auraUserData}Role-Type
#   m_class - SOAP::SOAPQName
#   templateInstance - TemplateInstance
class RoleType
  attr_accessor :templateInstance

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def initialize(v_class = nil, templateInstance = nil)
    @v_class = v_class
    @templateInstance = templateInstance
  end
end

# {urn:auraUserData}Property-Value-Type
#   m_class - SOAP::SOAPQName
#   templateInstance - TemplateInstance
class PropertyValueType
  attr_accessor :templateInstance

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def initialize(v_class = nil, templateInstance = nil)
    @v_class = v_class
    @templateInstance = templateInstance
  end
end

# {urn:auraUserData}Slot-Type
#   name - SOAP::SOAPQName
#   domain - ClibClass
#   range - ClibClass
class SlotType
  attr_accessor :name
  attr_accessor :domain
  attr_accessor :range

  def initialize(name = [], domain = [], range = [])
    @name = name
    @domain = domain
    @range = range
  end
end

# {urn:auraUserData}Atom
#   elementType - SOAP::SOAPString
#   count - SOAP::SOAPInt
class Atom
  attr_accessor :elementType
  attr_accessor :count

  def initialize(elementType = nil, count = nil)
    @elementType = elementType
    @count = count
  end
end

# {urn:auraUserData}QNameMap
#   key - SOAP::SOAPQName
#   value - SOAP::SOAPQName
class QNameMap
  attr_accessor :key
  attr_accessor :value

  def initialize(key = nil, value = nil)
    @key = key
    @value = value
  end
end

# {urn:auraUserData}CardinalityConstraintTerm
#   operator - SOAP::SOAPQName
#   count - SOAP::SOAPInt
#   m_class - SOAP::SOAPQName
class CardinalityConstraintTerm
  attr_accessor :operator
  attr_accessor :count

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def initialize(operator = nil, count = nil, v_class = nil)
    @operator = operator
    @count = count
    @v_class = v_class
  end
end

# {urn:auraUserData}TypeConstraintTerm
#   operator - SOAP::SOAPQName
#   m_class - SOAP::SOAPQName
class TypeConstraintTerm
  attr_accessor :operator

  def m_class
    @v_class
  end

  def m_class=(value)
    @v_class = value
  end

  def initialize(operator = nil, v_class = nil)
    @operator = operator
    @v_class = v_class
  end
end

# {urn:auraUserData}DocumentationElement
#   string - SOAP::SOAPString
#   reference - SOAP::SOAPQName
class DocumentationElement
  attr_accessor :string
  attr_accessor :reference

  def initialize(string = nil, reference = nil)
    @string = string
    @reference = reference
  end
end

# {urn:auraUserData}Molecule
#   formula - Formula
class Molecule
  attr_accessor :formula

  def initialize(formula = nil)
    @formula = formula
  end
end

# {urn:auraUserData}BasicNode
#   identifier - SOAP::SOAPQName
#   label - SOAP::SOAPString
#   documentation - Documentation
#   position - Position
#   isVisible - SOAP::SOAPBoolean
#   isNeverVisible - SOAP::SOAPBoolean
#   isViewed - SOAP::SOAPBoolean
#   isDisplayed - SOAP::SOAPBoolean
#   isEnclosed - SOAP::SOAPBoolean
#   isNew - SOAP::SOAPBoolean
#   userDefinedLabel - SOAP::SOAPString
#   type - SOAP::SOAPQName
#   comment - SOAP::SOAPString
#   expansionState - SOAP::SOAPQName
#   isRoot - SOAP::SOAPBoolean
#   isQueryNode - SOAP::SOAPBoolean
#   isNamedIndividual - SOAP::SOAPBoolean
#   paraphrase - SOAP::SOAPInteger
class BasicNode
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
#   identifier - SOAP::SOAPQName
#   label - SOAP::SOAPString
#   documentation - Documentation
#   position - Position
#   isVisible - SOAP::SOAPBoolean
#   isNeverVisible - SOAP::SOAPBoolean
#   isViewed - SOAP::SOAPBoolean
#   isDisplayed - SOAP::SOAPBoolean
#   isEnclosed - SOAP::SOAPBoolean
#   isNew - SOAP::SOAPBoolean
#   userDefinedLabel - SOAP::SOAPString
#   type - SOAP::SOAPQName
#   comment - SOAP::SOAPString
#   expansionState - SOAP::SOAPQName
#   isRoot - SOAP::SOAPBoolean
#   isOpen - SOAP::SOAPBoolean
#   canBeTrigger - SOAP::SOAPBoolean
#   canBeNegation - SOAP::SOAPBoolean
#   canBeSalient - SOAP::SOAPBoolean
#   subGraph - QNameArray
class BigNode
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

# {urn:auraUserData}Position
#   x - SOAP::SOAPInt
#   y - SOAP::SOAPInt
class Position
  attr_accessor :x
  attr_accessor :y

  def initialize(x = nil, y = nil)
    @x = x
    @y = y
  end
end

# {urn:auraUserData}LogicalFormula
#   operator - SOAP::SOAPQName
#   literals - ArrayOfLiterals
#   formulas - ArrayOfLogicalFormulas
class LogicalFormula
  attr_accessor :operator
  attr_accessor :literals
  attr_accessor :formulas

  def initialize(operator = nil, literals = nil, formulas = nil)
    @operator = operator
    @literals = literals
    @formulas = formulas
  end
end

# {urn:auraUserData}ConstraintTermHolder
#   cardinalityConstraint - CardinalityConstraintTerm
#   typeConstraint - TypeConstraintTerm
class ConstraintTermHolder
  attr_accessor :cardinalityConstraint
  attr_accessor :typeConstraint

  def initialize(cardinalityConstraint = nil, typeConstraint = nil)
    @cardinalityConstraint = cardinalityConstraint
    @typeConstraint = typeConstraint
  end
end

# {urn:auraUserData}ConstraintNodeAttributes
#   identifier - SOAP::SOAPQName
#   label - SOAP::SOAPString
#   documentation - Documentation
#   position - Position
#   isVisible - SOAP::SOAPBoolean
#   isNeverVisible - SOAP::SOAPBoolean
#   isViewed - SOAP::SOAPBoolean
#   isDisplayed - SOAP::SOAPBoolean
#   isEnclosed - SOAP::SOAPBoolean
#   isNew - SOAP::SOAPBoolean
class ConstraintNodeAttributes
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
#   identifier - SOAP::SOAPQName
#   label - SOAP::SOAPString
#   documentation - Documentation
#   position - Position
#   isVisible - SOAP::SOAPBoolean
#   isNeverVisible - SOAP::SOAPBoolean
#   isViewed - SOAP::SOAPBoolean
#   isDisplayed - SOAP::SOAPBoolean
#   isEnclosed - SOAP::SOAPBoolean
#   isNew - SOAP::SOAPBoolean
class ConstraintEdgeAttributes
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

# {urn:auraUserData}NAryNode
#   operator - SOAP::SOAPQName
#   arguments - NAryArgumentArray
class NAryNode
  attr_accessor :operator
  attr_accessor :arguments

  def initialize(operator = nil, arguments = nil)
    @operator = operator
    @arguments = arguments
  end
end

# {urn:auraUserData}Table
#   columns - ArrayOfTableColumns
#   rows - ArrayOfTableRows
class Table
  attr_accessor :columns
  attr_accessor :rows

  def initialize(columns = nil, rows = nil)
    @columns = columns
    @rows = rows
  end
end

# {urn:auraUserData}UnificationDiff
#   node1 - SOAP::SOAPQName
#   node2 - SOAP::SOAPQName
#   result - SOAP::SOAPQName
class UnificationDiff
  attr_accessor :node1
  attr_accessor :node2
  attr_accessor :result

  def initialize(node1 = nil, node2 = nil, result = nil)
    @node1 = node1
    @node2 = node2
    @result = result
  end
end

# {urn:auraUserData}resultItem
#   value - SOAP::SOAPQName
#   entity - EntityType
#   event - EventType
#   role - RoleType
#   property_Value - PropertyValueType
#   slot - SlotType
#   instance - SOAP::SOAPQName
class ResultItem
  attr_accessor :value
  attr_accessor :entity
  attr_accessor :event
  attr_accessor :role
  attr_accessor :property_Value
  attr_accessor :slot
  attr_accessor :instance

  def initialize(value = nil, entity = nil, event = nil, role = nil, property_Value = nil, slot = nil, instance = nil)
    @value = value
    @entity = entity
    @event = event
    @role = role
    @property_Value = property_Value
    @slot = slot
    @instance = instance
  end
end

# {urn:auraUserData}Paraphrase
#   sentence - SOAP::SOAPString
#   node - SOAP::SOAPQName
#   source - SOAP::SOAPQName
#   relation - SOAP::SOAPQName
#   target - SOAP::SOAPQName
class Paraphrase
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

# {urn:auraUserData}FormulaComponent
#   atomArray - AtomArray
#   formula - Formula
class FormulaComponent
  attr_accessor :atomArray
  attr_accessor :formula

  def initialize(atomArray = nil, formula = nil)
    @atomArray = atomArray
    @formula = formula
  end
end

# {urn:auraUserData}CardinalValueScale
#   name - SOAP::SOAPQName
#   isSpecializable - SOAP::SOAPBoolean
class CardinalValueScale
  attr_accessor :name
  attr_accessor :isSpecializable

  def initialize(name = nil, isSpecializable = nil)
    @name = name
    @isSpecializable = isSpecializable
  end
end

# {urn:auraUserData}CategoricalValueScale
#   values - QNameArray
class CategoricalValueScale
  attr_accessor :values

  def initialize(values = nil)
    @values = values
  end
end

# {urn:auraUserData}ScalarValueScale
#   name - SOAP::SOAPQName
#   domains - QNameArray
#   values - QNameArray
class ScalarValueScale
  attr_accessor :name
  attr_accessor :domains
  attr_accessor :values

  def initialize(name = nil, domains = nil, values = nil)
    @name = name
    @domains = domains
    @values = values
  end
end

# {urn:auraUserData}UIAttributesForNode
#   name - SOAP::SOAPQName
#   position - Position
#   isVisible - SOAP::SOAPBoolean
#   isNeverVisible - SOAP::SOAPBoolean
class UIAttributesForNode
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
#   source - SOAP::SOAPQName
#   relation - SOAP::SOAPQName
#   targets - QNameArray
#   position - Position
#   isVisible - SOAP::SOAPBoolean
#   isNeverVisible - SOAP::SOAPBoolean
class UIAttributesForEdge
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
#   name - SOAP::SOAPQName
#   position - Position
#   isVisible - SOAP::SOAPBoolean
#   isNeverVisible - SOAP::SOAPBoolean
class UIAttributesForTable
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
#   concept - SOAP::SOAPQName
#   conceptList - QNameArray
#   gaf - GAF
#   gafList - ArrayOfGAFs
#   stringValue - SOAP::SOAPString
#   intValue - SOAP::SOAPInt
#   boolValue - SOAP::SOAPBoolean
#   operatorTree - NAryNode
#   nameMap - QNameTable
#   constraintTerms - ArrayOfConstraintTerms
#   logicalFormula - LogicalFormula
#   propertyValues - ArrayOfValues
#   documentation - Documentation
#   table - Table
#   synonyms - VocabularyArray
class LMapArgumentValue
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
#   unification - UnificationDiff
#   addedFact - SOAP::SOAPQName
#   addedIndividual - SOAP::SOAPQName
#   deletedFact - SOAP::SOAPQName
#   deletedIndividual - SOAP::SOAPQName
class ConceptMapDiff
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

# {urn:auraUserData}NodeTable
#   identifier - SOAP::SOAPQName
#   label - SOAP::SOAPString
#   documentation - Documentation
#   position - Position
#   isVisible - SOAP::SOAPBoolean
#   isNeverVisible - SOAP::SOAPBoolean
#   isViewed - SOAP::SOAPBoolean
#   isDisplayed - SOAP::SOAPBoolean
#   isEnclosed - SOAP::SOAPBoolean
#   isNew - SOAP::SOAPBoolean
#   node - SOAP::SOAPQName
#   identifier - SOAP::SOAPQName
#   table - Table
class NodeTable
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
  attr_accessor :identifier
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
#   identifier - SOAP::SOAPQName
#   equation - NAryNode
#   bindings - QNameTable
class Equation
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
#   constraintTerm - ConstraintTermHolder
#   node - SOAP::SOAPQName
#   slot - SOAP::SOAPQName
#   constrainedNodes - QNameArray
#   nodeAttributes - ConstraintNodeAttributes
#   edgeAttributes - ConstraintEdgeAttributes
class Constraint
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
#   identifier - SOAP::SOAPQName
#   label - SOAP::SOAPString
#   documentation - Documentation
#   position - Position
#   isVisible - SOAP::SOAPBoolean
#   isNeverVisible - SOAP::SOAPBoolean
#   isViewed - SOAP::SOAPBoolean
#   isDisplayed - SOAP::SOAPBoolean
#   isEnclosed - SOAP::SOAPBoolean
#   isNew - SOAP::SOAPBoolean
#   gaf - GAF
#   condition - LogicalFormula
#   isQuery - SOAP::SOAPBoolean
#   paraphrase - SOAP::SOAPInteger
#   supports - QNameArray
#   isInterface - SOAP::SOAPBoolean
class Edge
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
#   identifier - SOAP::SOAPQName
#   label - SOAP::SOAPString
#   type - SOAP::SOAPQName
#   unit - SOAP::SOAPQName
#   magnitude - SOAP::SOAPFloat
#   scale - SOAP::SOAPQName
class PropertyValue
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
#   basicNode - BasicNode
#   bigNode - BigNode
class GenericNode
  attr_accessor :basicNode
  attr_accessor :bigNode

  def initialize(basicNode = nil, bigNode = nil)
    @basicNode = basicNode
    @bigNode = bigNode
  end
end

# {urn:auraUserData}ReactionParticipant
#   count - SOAP::SOAPInt
#   molecule - Molecule
#   state - SOAP::SOAPQName
class ReactionParticipant
  attr_accessor :count
  attr_accessor :molecule
  attr_accessor :state

  def initialize(count = nil, molecule = nil, state = nil)
    @count = count
    @molecule = molecule
    @state = state
  end
end

# {urn:auraUserData}DirtParaphrase
#   paraphraseID - SOAP::SOAPString
#   paraphraseString - SOAP::SOAPString
#   blockedP - SOAP::SOAPQName
class DirtParaphrase
  attr_accessor :paraphraseID
  attr_accessor :paraphraseString
  attr_accessor :blockedP

  def initialize(paraphraseID = nil, paraphraseString = nil, blockedP = nil)
    @paraphraseID = paraphraseID
    @paraphraseString = paraphraseString
    @blockedP = blockedP
  end
end

# {urn:auraUserData}documentSelection
#   selectionName - SOAP::SOAPQName
#   selectionType - SOAP::SOAPQName
#   selectionURI - SOAP::SOAPAnyURI
#   selectionPath - SOAP::SOAPString
#   selectionStart - SOAP::SOAPInt
#   selectionEnd - SOAP::SOAPInt
#   selectionSummary - SOAP::SOAPString
class DocumentSelection
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

# {urn:auraUserData}QuestionUninterpretableType
#   html - SOAP::SOAPString
#   partialCmap - QuestionConceptMap
class QuestionUninterpretableType
  attr_accessor :html
  attr_accessor :partialCmap

  def initialize(html = nil, partialCmap = nil)
    @html = html
    @partialCmap = partialCmap
  end
end

# {urn:auraUserData}WordConceptMap
#   word - SOAP::SOAPString
#   partOfSpeech - SOAP::SOAPQName
#   concept - SOAP::SOAPQName
class WordConceptMap
  attr_accessor :word
  attr_accessor :partOfSpeech
  attr_accessor :concept

  def initialize(word = nil, partOfSpeech = nil, concept = nil)
    @word = word
    @partOfSpeech = partOfSpeech
    @concept = concept
  end
end

# {urn:auraUserData}PartitionData
#   id - SOAP::SOAPQName
#   members - QNameArray
class PartitionData
  attr_accessor :id
  attr_accessor :members

  def initialize(id = nil, members = nil)
    @id = id
    @members = members
  end
end

# {urn:auraUserData}PartitionEdit
#   operation - SOAP::SOAPQName
#   id - SOAP::SOAPQName
#   concept - SOAP::SOAPQName
#   members - QNameArray
class PartitionEdit
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

# {urn:auraUserData}RelationInformation
#   relation - SOAP::SOAPQName
#   arity - SOAP::SOAPInt
class RelationInformation
  attr_accessor :relation
  attr_accessor :arity

  def initialize(relation = nil, arity = nil)
    @relation = relation
    @arity = arity
  end
end

# {urn:auraUserData}WordSense
#   concept - SOAP::SOAPQName
#   definition - SOAP::SOAPString
class WordSense
  attr_accessor :concept
  attr_accessor :definition

  def initialize(concept = nil, definition = nil)
    @concept = concept
    @definition = definition
  end
end

# {urn:auraUserData}LMapArgument
#   name - SOAP::SOAPString
#   value - LMapArgumentValue
class LMapArgument
  attr_accessor :name
  attr_accessor :value

  def initialize(name = nil, value = nil)
    @name = name
    @value = value
  end
end

# {urn:auraUserData}UIAttributes
#   node - UIAttributesForNode
#   edge - UIAttributesForEdge
#   table - UIAttributesForTable
class UIAttributes
  attr_accessor :node
  attr_accessor :edge
  attr_accessor :table

  def initialize(node = nil, edge = nil, table = nil)
    @node = node
    @edge = edge
    @table = table
  end
end

# {urn:auraUserData}RelationOption
#   relation - SOAP::SOAPQName
#   description - SOAP::SOAPString
class RelationOption
  attr_accessor :relation
  attr_accessor :description

  def initialize(relation = nil, description = nil)
    @relation = relation
    @description = description
  end
end

# {urn:auraUserData}ConnectRelationInvisibleType
#   source - SOAP::SOAPQName
#   relation - SOAP::SOAPQName
#   target - SOAP::SOAPQName
#   nodeToExpand - SOAP::SOAPQName
class ConnectRelationInvisibleType
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
#   operation - SOAP::SOAPString
#   content - StringArray
#   cause - SOAP::SOAPString
#   sourceAxiomClasses - QNameArray
#   sourcePrototypeClasses - QNameArray
class InheritedContentModificationType
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

# {urn:auraUserData}ValidValueScales
#   cardinal - CardinalValueScale
#   categorical - CategoricalValueScale
#   scalar - ScalarValueScale
class ValidValueScales
  attr_accessor :cardinal
  attr_accessor :categorical
  attr_accessor :scalar

  def initialize(cardinal = nil, categorical = nil, scalar = nil)
    @cardinal = cardinal
    @categorical = categorical
    @scalar = scalar
  end
end

# {urn:auraUserData}termResult
#   term - SOAP::SOAPString
#   exact - ResultItemArray
#   partial - ResultItemArray
#   semantic - ResultItemArray
class TermResult
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

# {urn:auraUserData}GAF
#   source - SOAP::SOAPQName
#   relation - SOAP::SOAPQName
#   targets - QNameArray
class GAF
  attr_accessor :source
  attr_accessor :relation
  attr_accessor :targets

  def initialize(source = nil, relation = nil, targets = nil)
    @source = source
    @relation = relation
    @targets = targets
  end
end

# {urn:auraUserData}QuestionConceptMap
#   conceptMap - ConceptMap
#   paraphrases - ArrayOfParaphrases
#   sources - ArrayOfSentences
class QuestionConceptMap
  attr_accessor :conceptMap
  attr_accessor :paraphrases
  attr_accessor :sources

  def initialize(conceptMap = nil, paraphrases = nil, sources = nil)
    @conceptMap = conceptMap
    @paraphrases = paraphrases
    @sources = sources
  end
end

# {urn:auraUserData}Viewpoint
#   identifier - SOAP::SOAPQName
#   conceptMap - ConceptMap
#   concept - SOAP::SOAPQName
#   setupEdges - QNameArray
#   setupNodes - QNameArray
#   queryEdges - QNameArray
#   queryNodes - QNameArray
#   conceptEdges - QNameArray
#   conceptNodes - QNameArray
#   otherEdges - QNameArray
#   otherNodes - QNameArray
class Viewpoint
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

# {urn:auraUserData}Formula
#   title - SOAP::SOAPString
#   formalCharge - SOAP::SOAPInt
#   count - SOAP::SOAPInt
#   formulaComponents - FormulaComponentList
class Formula
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

# {urn:auraUserData}SOAPServerType
#   el0 - ConnectRelationInvisibleType
#   el1 - InheritedContentModificationType
class SOAPServerType
  attr_accessor :el0
  attr_accessor :el1

  def initialize(el0 = nil, el1 = nil)
    @el0 = el0
    @el1 = el1
  end
end

# {urn:auraUserData}ConceptMapEditSummary
#   initial - ConceptMap
#   final - ConceptMap
#   differences - ConceptMapDiffsArray
class ConceptMapEditSummary
  attr_accessor :initial
  attr_accessor :final
  attr_accessor :differences

  def initialize(initial = nil, final = nil, differences = nil)
    @initial = initial
    @final = final
    @differences = differences
  end
end

# {urn:auraUserData}ConceptMap
#   name - SOAP::SOAPQName
#   isEditable - SOAP::SOAPBoolean
#   isDisconnected - SOAP::SOAPBoolean
#   nodes - ArrayOfNodes
#   values - ArrayOfValues
#   edges - ArrayOfEdges
#   constraints - ArrayOfConstraints
#   equations - ArrayOfEquations
#   tables - ArrayOfTables
#   knockonUnifications - QNameArray
class ConceptMap
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

  def initialize(name = nil, isEditable = nil, isDisconnected = nil, nodes = nil, values = nil, edges = nil, constraints = nil, equations = nil, tables = nil, knockonUnifications = nil)
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
  end
end

# {urn:auraUserData}SOAPServerType003
#   el0 - QuestionUninterpretableType
class SOAPServerType003
  attr_accessor :el0

  def initialize(el0 = nil)
    @el0 = el0
  end
end

# {urn:auraUserData}Reaction
#   reactantList - ReactionParticipantList
#   productList - ReactionParticipantList
#   direction - SOAP::SOAPQName
class Reaction
  attr_accessor :reactantList
  attr_accessor :productList
  attr_accessor :direction

  def initialize(reactantList = nil, productList = nil, direction = nil)
    @reactantList = reactantList
    @productList = productList
    @direction = direction
  end
end

# {urn:auraUserData}TableRow
class TableRow < ::Array
end

# {urn:auraUserData}ArrayOfTableColumns
class ArrayOfTableColumns < ::Array
end

# {urn:auraUserData}ArrayOfTableRows
class ArrayOfTableRows < ::Array
end

# {urn:auraUserData}NAryArgumentArray
class NAryArgumentArray < ::Array
end

# {urn:auraUserData}ArrayOfLiterals
class ArrayOfLiterals < ::Array
end

# {urn:auraUserData}ArrayOfLogicalFormulas
class ArrayOfLogicalFormulas < ::Array
end

# {urn:auraUserData}Documentation
class Documentation < ::Array
end

# {urn:auraUserData}QNameTable
class QNameTable < ::Array
end

# {urn:auraUserData}ArrayOfConstraintTerms
class ArrayOfConstraintTerms < ::Array
end

# {urn:auraUserData}AtomArray
class AtomArray < ::Array
end

# {urn:auraUserData}ResultItemArray
class ResultItemArray < ::Array
end

# {urn:auraUserData}ReactionParticipantList
class ReactionParticipantList < ::Array
end

# {urn:auraUserData}ArrayOfNodes
class ArrayOfNodes < ::Array
end

# {urn:auraUserData}ArrayOfValues
class ArrayOfValues < ::Array
end

# {urn:auraUserData}ArrayOfEdges
class ArrayOfEdges < ::Array
end

# {urn:auraUserData}ArrayOfConstraints
class ArrayOfConstraints < ::Array
end

# {urn:auraUserData}ArrayOfEquations
class ArrayOfEquations < ::Array
end

# {urn:auraUserData}ArrayOfTables
class ArrayOfTables < ::Array
end

# {urn:auraUserData}ConceptMapDiffsArray
class ConceptMapDiffsArray < ::Array
end

# {urn:auraUserData}FormulaComponentList
class FormulaComponentList < ::Array
end

# {urn:auraUserData}ArrayOfParaphrases
class ArrayOfParaphrases < ::Array
end

# {urn:auraUserData}ArrayOfSentences
class ArrayOfSentences < ::Array
end

# {urn:auraUserData}QNameArray
class QNameArray < ::Array
end

# {urn:auraUserData}ArrayOfGAFs
class ArrayOfGAFs < ::Array
end

# {urn:auraUserData}StringArray
class StringArray < ::Array
end

# {urn:auraUserData}ArrayOfTermResult
class ArrayOfTermResult < ::Array
end

# {urn:auraUserData}ValidValuesArray
class ValidValuesArray < ::Array
end

# {urn:auraUserData}ArrayOfViewpoints
class ArrayOfViewpoints < ::Array
end

# {urn:auraUserData}ArrayOfRelationOptions
class ArrayOfRelationOptions < ::Array
end

# {urn:auraUserData}UIAttributeArray
class UIAttributeArray < ::Array
end

# {urn:auraUserData}LMapArgumentTable
class LMapArgumentTable < ::Array
end

# {urn:auraUserData}ArrayOfWordSenses
class ArrayOfWordSenses < ::Array
end

# {urn:auraUserData}SOAPServerType002
class SOAPServerType002 < ::Array
end

# {urn:auraUserData}PartitionEditsArray
class PartitionEditsArray < ::Array
end

# {urn:auraUserData}PartitionsArray
class PartitionsArray < ::Array
end

# {urn:auraUserData}VocabularyArray
class VocabularyArray < ::Array
end

# {urn:auraUserData}DocumentSelectionArray
class DocumentSelectionArray < ::Array
end

# {urn:auraUserData}ArrayOfDirtParaphrases
class ArrayOfDirtParaphrases < ::Array
end
