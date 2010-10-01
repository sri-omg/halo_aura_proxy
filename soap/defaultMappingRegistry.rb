require 'soap/default'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsAuraUserData = "urn:auraUserData"

  EncodedRegistry.register(
    :class => TableCell,
    :schema_type => XSD::QName.new(NsAuraUserData, "TableCell"),
    :schema_element => [
      ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")], [0, 1]],
      ["value", ["PropertyValue", XSD::QName.new(nil, "value")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Literal,
    :schema_type => XSD::QName.new(NsAuraUserData, "Literal"),
    :schema_element => [
      ["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")], [0, 1]],
      ["targets", ["QNameArray", XSD::QName.new(nil, "targets")], [0, 1]],
      ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")], [0, 1]],
      ["isNegated", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNegated")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => NAryArgument,
    :schema_type => XSD::QName.new(NsAuraUserData, "NAryArgument"),
    :schema_element => [
      ["var", ["SOAP::SOAPQName", XSD::QName.new(nil, "var")], [0, 1]],
      ["ival", ["SOAP::SOAPInt", XSD::QName.new(nil, "ival")], [0, 1]],
      ["fval", ["SOAP::SOAPFloat", XSD::QName.new(nil, "fval")], [0, 1]],
      ["subnode", ["NAryNode", XSD::QName.new(nil, "subnode")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    TableRow,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "TableCell") }
  )

  EncodedRegistry.register(
    :class => TableColumn,
    :schema_type => XSD::QName.new(NsAuraUserData, "TableColumn"),
    :schema_element => [
      ["header", ["SOAP::SOAPQName", XSD::QName.new(nil, "header")], [0, 1]],
      ["order", ["SOAP::SOAPInt", XSD::QName.new(nil, "order")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ClibClass,
    :schema_type => XSD::QName.new(NsAuraUserData, "clibClass"),
    :schema_element => [
      ["value", ["SOAP::SOAPQName", XSD::QName.new(nil, "value")], [0, 1]],
      ["entity", ["EntityType", XSD::QName.new(nil, "Entity")], [0, 1]],
      ["event", ["EventType", XSD::QName.new(nil, "Event")], [0, 1]],
      ["role", ["RoleType", XSD::QName.new(nil, "Role")], [0, 1]],
      ["property_Value", ["PropertyValueType", XSD::QName.new(nil, "Property-Value")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TemplateInstance,
    :schema_type => XSD::QName.new(NsAuraUserData, "templateInstance"),
    :schema_element => [
      ["instance", ["SOAP::SOAPQName", XSD::QName.new(nil, "instance")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => EntityType,
    :schema_type => XSD::QName.new(NsAuraUserData, "Entity-Type"),
    :schema_element => [
      ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")], [0, 1]],
      ["templateInstance", ["TemplateInstance", XSD::QName.new(nil, "templateInstance")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => EventType,
    :schema_type => XSD::QName.new(NsAuraUserData, "Event-Type"),
    :schema_element => [
      ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")], [0, 1]],
      ["templateInstance", ["TemplateInstance", XSD::QName.new(nil, "templateInstance")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => RoleType,
    :schema_type => XSD::QName.new(NsAuraUserData, "Role-Type"),
    :schema_element => [
      ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")], [0, 1]],
      ["templateInstance", ["TemplateInstance", XSD::QName.new(nil, "templateInstance")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PropertyValueType,
    :schema_type => XSD::QName.new(NsAuraUserData, "Property-Value-Type"),
    :schema_element => [
      ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")], [0, 1]],
      ["templateInstance", ["TemplateInstance", XSD::QName.new(nil, "templateInstance")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SlotType,
    :schema_type => XSD::QName.new(NsAuraUserData, "Slot-Type"),
    :schema_element => [
      ["name", ["SOAP::SOAPQName[]", XSD::QName.new(nil, "name")], [0, nil]],
      ["domain", ["ClibClass[]", XSD::QName.new(nil, "domain")], [0, nil]],
      ["range", ["ClibClass[]", XSD::QName.new(nil, "range")], [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Atom,
    :schema_type => XSD::QName.new(NsAuraUserData, "Atom"),
    :schema_element => [
      ["elementType", ["SOAP::SOAPString", XSD::QName.new(nil, "elementType")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfTableColumns,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "TableColumn") }
  )

  EncodedRegistry.set(
    ArrayOfTableRows,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "TableRow") }
  )

  EncodedRegistry.register(
    :class => QNameMap,
    :schema_type => XSD::QName.new(NsAuraUserData, "QNameMap"),
    :schema_element => [
      ["key", ["SOAP::SOAPQName", XSD::QName.new(nil, "key")], [0, 1]],
      ["value", ["SOAP::SOAPQName", XSD::QName.new(nil, "value")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    NAryArgumentArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "NAryArgument") }
  )

  EncodedRegistry.register(
    :class => CardinalityConstraintTerm,
    :schema_type => XSD::QName.new(NsAuraUserData, "CardinalityConstraintTerm"),
    :schema_element => [
      ["operator", ["SOAP::SOAPQName", XSD::QName.new(nil, "operator")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => TypeConstraintTerm,
    :schema_type => XSD::QName.new(NsAuraUserData, "TypeConstraintTerm"),
    :schema_element => [
      ["operator", ["SOAP::SOAPQName", XSD::QName.new(nil, "operator")], [0, 1]],
      ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfLiterals,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "Literal") }
  )

  EncodedRegistry.set(
    ArrayOfLogicalFormulas,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "LogicalFormula") }
  )

  EncodedRegistry.register(
    :class => DocumentationElement,
    :schema_type => XSD::QName.new(NsAuraUserData, "DocumentationElement"),
    :schema_element => [
      ["string", ["SOAP::SOAPString", XSD::QName.new(nil, "string")], [0, 1]],
      ["reference", ["SOAP::SOAPQName", XSD::QName.new(nil, "reference")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Molecule,
    :schema_type => XSD::QName.new(NsAuraUserData, "Molecule"),
    :schema_element => [
      ["formula", ["Formula", XSD::QName.new(nil, "formula")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => BasicNode,
    :schema_type => XSD::QName.new(NsAuraUserData, "BasicNode"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]],
      ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")], [0, 1]],
      ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")], [0, 1]],
      ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")], [0, 1]],
      ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")], [0, 1]],
      ["userDefinedLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "userDefinedLabel")], [0, 1]],
      ["type", ["SOAP::SOAPQName", XSD::QName.new(nil, "type")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]],
      ["expansionState", ["SOAP::SOAPQName", XSD::QName.new(nil, "expansionState")], [0, 1]],
      ["isRoot", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isRoot")], [0, 1]],
      ["isQueryNode", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isQueryNode")], [0, 1]],
      ["isNamedIndividual", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNamedIndividual")], [0, 1]],
      ["paraphrase", ["SOAP::SOAPInteger", XSD::QName.new(nil, "paraphrase")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => BigNode,
    :schema_type => XSD::QName.new(NsAuraUserData, "BigNode"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")]],
      ["position", ["Position", XSD::QName.new(nil, "position")]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")]],
      ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")]],
      ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")]],
      ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")]],
      ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")]],
      ["userDefinedLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "userDefinedLabel")]],
      ["type", ["SOAP::SOAPQName", XSD::QName.new(nil, "type")]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")]],
      ["expansionState", ["SOAP::SOAPQName", XSD::QName.new(nil, "expansionState")]],
      ["isRoot", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isRoot")]],
      ["isOpen", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isOpen")]],
      ["canBeTrigger", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "canBeTrigger")]],
      ["canBeNegation", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "canBeNegation")]],
      ["canBeSalient", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "canBeSalient")]],
      ["subGraph", ["QNameArray", XSD::QName.new(nil, "subGraph")]]
    ]
  )

  EncodedRegistry.set(
    Documentation,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "DocumentationElement") }
  )

  EncodedRegistry.register(
    :class => Position,
    :schema_type => XSD::QName.new(NsAuraUserData, "Position"),
    :schema_element => [
      ["x", ["SOAP::SOAPInt", XSD::QName.new(nil, "x")]],
      ["y", ["SOAP::SOAPInt", XSD::QName.new(nil, "y")]]
    ]
  )

  EncodedRegistry.register(
    :class => LogicalFormula,
    :schema_type => XSD::QName.new(NsAuraUserData, "LogicalFormula"),
    :schema_element => [
      ["operator", ["SOAP::SOAPQName", XSD::QName.new(nil, "operator")], [0, 1]],
      ["literals", ["ArrayOfLiterals", XSD::QName.new(nil, "literals")], [0, 1]],
      ["formulas", ["ArrayOfLogicalFormulas", XSD::QName.new(nil, "formulas")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ConstraintTermHolder,
    :schema_type => XSD::QName.new(NsAuraUserData, "ConstraintTermHolder"),
    :schema_element => [
      ["cardinalityConstraint", ["CardinalityConstraintTerm", XSD::QName.new(nil, "cardinalityConstraint")], [0, 1]],
      ["typeConstraint", ["TypeConstraintTerm", XSD::QName.new(nil, "typeConstraint")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ConstraintNodeAttributes,
    :schema_type => XSD::QName.new(NsAuraUserData, "ConstraintNodeAttributes"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]],
      ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")], [0, 1]],
      ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")], [0, 1]],
      ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")], [0, 1]],
      ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ConstraintEdgeAttributes,
    :schema_type => XSD::QName.new(NsAuraUserData, "ConstraintEdgeAttributes"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]],
      ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")], [0, 1]],
      ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")], [0, 1]],
      ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")], [0, 1]],
      ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => NAryNode,
    :schema_type => XSD::QName.new(NsAuraUserData, "NAryNode"),
    :schema_element => [
      ["operator", ["SOAP::SOAPQName", XSD::QName.new(nil, "operator")], [0, 1]],
      ["arguments", ["NAryArgumentArray", XSD::QName.new(nil, "arguments")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    QNameTable,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "QNameMap") }
  )

  EncodedRegistry.register(
    :class => Table,
    :schema_type => XSD::QName.new(NsAuraUserData, "Table"),
    :schema_element => [
      ["columns", ["ArrayOfTableColumns", XSD::QName.new(nil, "columns")], [0, 1]],
      ["rows", ["ArrayOfTableRows", XSD::QName.new(nil, "rows")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UnificationDiff,
    :schema_type => XSD::QName.new(NsAuraUserData, "UnificationDiff"),
    :schema_element => [
      ["node1", ["SOAP::SOAPQName", XSD::QName.new(nil, "node1")], [0, 1]],
      ["node2", ["SOAP::SOAPQName", XSD::QName.new(nil, "node2")], [0, 1]],
      ["result", ["SOAP::SOAPQName", XSD::QName.new(nil, "result")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfConstraintTerms,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "ConstraintTermHolder") }
  )

  EncodedRegistry.set(
    AtomArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "Atom") }
  )

  EncodedRegistry.register(
    :class => ResultItem,
    :schema_type => XSD::QName.new(NsAuraUserData, "resultItem"),
    :schema_element => [
      ["value", ["SOAP::SOAPQName", XSD::QName.new(nil, "value")], [0, 1]],
      ["entity", ["EntityType", XSD::QName.new(nil, "Entity")], [0, 1]],
      ["event", ["EventType", XSD::QName.new(nil, "Event")], [0, 1]],
      ["role", ["RoleType", XSD::QName.new(nil, "Role")], [0, 1]],
      ["property_Value", ["PropertyValueType", XSD::QName.new(nil, "Property-Value")], [0, 1]],
      ["slot", ["SlotType", XSD::QName.new(nil, "Slot")], [0, 1]],
      ["instance", ["SOAP::SOAPQName", XSD::QName.new(nil, "instance")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Paraphrase,
    :schema_type => XSD::QName.new(NsAuraUserData, "Paraphrase"),
    :schema_element => [
      ["sentence", ["SOAP::SOAPString", XSD::QName.new(nil, "sentence")], [0, 1]],
      ["node", ["SOAP::SOAPQName", XSD::QName.new(nil, "node")], [0, 1]],
      ["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")], [0, 1]],
      ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")], [0, 1]],
      ["target", ["SOAP::SOAPQName", XSD::QName.new(nil, "target")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ResultItemArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "resultItem") }
  )

  EncodedRegistry.register(
    :class => FormulaComponent,
    :schema_type => XSD::QName.new(NsAuraUserData, "FormulaComponent"),
    :schema_element => [
      ["atomArray", ["AtomArray", XSD::QName.new(nil, "atomArray")], [0, 1]],
      ["formula", ["Formula", XSD::QName.new(nil, "formula")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CardinalValueScale,
    :schema_type => XSD::QName.new(NsAuraUserData, "CardinalValueScale"),
    :schema_element => [
      ["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")], [0, 1]],
      ["isSpecializable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isSpecializable")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => CategoricalValueScale,
    :schema_type => XSD::QName.new(NsAuraUserData, "CategoricalValueScale"),
    :schema_element => [
      ["values", ["QNameArray", XSD::QName.new(nil, "values")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ScalarValueScale,
    :schema_type => XSD::QName.new(NsAuraUserData, "ScalarValueScale"),
    :schema_element => [
      ["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")], [0, 1]],
      ["domains", ["QNameArray", XSD::QName.new(nil, "domains")], [0, 1]],
      ["values", ["QNameArray", XSD::QName.new(nil, "values")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UIAttributesForNode,
    :schema_type => XSD::QName.new(NsAuraUserData, "UIAttributesForNode"),
    :schema_element => [
      ["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UIAttributesForEdge,
    :schema_type => XSD::QName.new(NsAuraUserData, "UIAttributesForEdge"),
    :schema_element => [
      ["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")], [0, 1]],
      ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")], [0, 1]],
      ["targets", ["QNameArray", XSD::QName.new(nil, "targets")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UIAttributesForTable,
    :schema_type => XSD::QName.new(NsAuraUserData, "UIAttributesForTable"),
    :schema_element => [
      ["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => LMapArgumentValue,
    :schema_type => XSD::QName.new(NsAuraUserData, "LMapArgumentValue"),
    :schema_element => [
      ["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")], [0, 1]],
      ["conceptList", ["QNameArray", XSD::QName.new(nil, "conceptList")], [0, 1]],
      ["gaf", ["GAF", XSD::QName.new(nil, "gaf")], [0, 1]],
      ["gafList", ["ArrayOfGAFs", XSD::QName.new(nil, "gafList")], [0, 1]],
      ["stringValue", ["SOAP::SOAPString", XSD::QName.new(nil, "stringValue")], [0, 1]],
      ["intValue", ["SOAP::SOAPInt", XSD::QName.new(nil, "intValue")], [0, 1]],
      ["boolValue", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "boolValue")], [0, 1]],
      ["operatorTree", ["NAryNode", XSD::QName.new(nil, "operatorTree")], [0, 1]],
      ["nameMap", ["QNameTable", XSD::QName.new(nil, "nameMap")], [0, 1]],
      ["constraintTerms", ["ArrayOfConstraintTerms", XSD::QName.new(nil, "constraintTerms")], [0, 1]],
      ["logicalFormula", ["LogicalFormula", XSD::QName.new(nil, "logicalFormula")], [0, 1]],
      ["propertyValues", ["ArrayOfValues", XSD::QName.new(nil, "propertyValues")], [0, 1]],
      ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")], [0, 1]],
      ["table", ["Table", XSD::QName.new(nil, "table")], [0, 1]],
      ["synonyms", ["VocabularyArray", XSD::QName.new(nil, "synonyms")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ConceptMapDiff,
    :schema_type => XSD::QName.new(NsAuraUserData, "ConceptMapDiff"),
    :schema_element => [
      ["unification", ["UnificationDiff", XSD::QName.new(nil, "unification")], [0, 1]],
      ["addedFact", ["SOAP::SOAPQName", XSD::QName.new(nil, "addedFact")], [0, 1]],
      ["addedIndividual", ["SOAP::SOAPQName", XSD::QName.new(nil, "addedIndividual")], [0, 1]],
      ["deletedFact", ["SOAP::SOAPQName", XSD::QName.new(nil, "deletedFact")], [0, 1]],
      ["deletedIndividual", ["SOAP::SOAPQName", XSD::QName.new(nil, "deletedIndividual")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => NodeTable,
    :schema_type => XSD::QName.new(NsAuraUserData, "NodeTable"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]],
      ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")], [0, 1]],
      ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")], [0, 1]],
      ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")], [0, 1]],
      ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")], [0, 1]],
      ["node", ["SOAP::SOAPQName", XSD::QName.new(nil, "node")], [0, 1]],
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["table", ["Table", XSD::QName.new(nil, "table")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Equation,
    :schema_type => XSD::QName.new(NsAuraUserData, "Equation"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["equation", ["NAryNode", XSD::QName.new(nil, "equation")], [0, 1]],
      ["bindings", ["QNameTable", XSD::QName.new(nil, "bindings")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Constraint,
    :schema_type => XSD::QName.new(NsAuraUserData, "Constraint"),
    :schema_element => [
      ["constraintTerm", ["ConstraintTermHolder", XSD::QName.new(nil, "constraintTerm")], [0, 1]],
      ["node", ["SOAP::SOAPQName", XSD::QName.new(nil, "node")], [0, 1]],
      ["slot", ["SOAP::SOAPQName", XSD::QName.new(nil, "slot")], [0, 1]],
      ["constrainedNodes", ["QNameArray", XSD::QName.new(nil, "constrainedNodes")], [0, 1]],
      ["nodeAttributes", ["ConstraintNodeAttributes", XSD::QName.new(nil, "nodeAttributes")], [0, 1]],
      ["edgeAttributes", ["ConstraintEdgeAttributes", XSD::QName.new(nil, "edgeAttributes")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Edge,
    :schema_type => XSD::QName.new(NsAuraUserData, "Edge"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]],
      ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")], [0, 1]],
      ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")], [0, 1]],
      ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")], [0, 1]],
      ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")], [0, 1]],
      ["gaf", ["GAF", XSD::QName.new(nil, "gaf")], [0, 1]],
      ["condition", ["LogicalFormula", XSD::QName.new(nil, "condition")], [0, 1]],
      ["isQuery", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isQuery")], [0, 1]],
      ["paraphrase", ["SOAP::SOAPInteger", XSD::QName.new(nil, "paraphrase")], [0, 1]],
      ["supports", ["QNameArray", XSD::QName.new(nil, "supports")], [0, 1]],
      ["isInterface", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isInterface")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PropertyValue,
    :schema_type => XSD::QName.new(NsAuraUserData, "PropertyValue"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["type", ["SOAP::SOAPQName", XSD::QName.new(nil, "type")], [0, 1]],
      ["unit", ["SOAP::SOAPQName", XSD::QName.new(nil, "unit")], [0, 1]],
      ["magnitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "magnitude")], [0, 1]],
      ["scale", ["SOAP::SOAPQName", XSD::QName.new(nil, "scale")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GenericNode,
    :schema_type => XSD::QName.new(NsAuraUserData, "GenericNode"),
    :schema_element => [
      ["basicNode", ["BasicNode", XSD::QName.new(nil, "basicNode")], [0, 1]],
      ["bigNode", ["BigNode", XSD::QName.new(nil, "bigNode")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ReactionParticipant,
    :schema_type => XSD::QName.new(NsAuraUserData, "ReactionParticipant"),
    :schema_element => [
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["molecule", ["Molecule", XSD::QName.new(nil, "molecule")], [0, 1]],
      ["state", ["SOAP::SOAPQName", XSD::QName.new(nil, "state")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => DirtParaphrase,
    :schema_type => XSD::QName.new(NsAuraUserData, "DirtParaphrase"),
    :schema_element => [
      ["paraphraseID", ["SOAP::SOAPString", XSD::QName.new(nil, "paraphraseID")], [0, 1]],
      ["paraphraseString", ["SOAP::SOAPString", XSD::QName.new(nil, "paraphraseString")], [0, 1]],
      ["blockedP", ["SOAP::SOAPQName", XSD::QName.new(nil, "blockedP")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ReactionParticipantList,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "ReactionParticipant") }
  )

  EncodedRegistry.register(
    :class => DocumentSelection,
    :schema_type => XSD::QName.new(NsAuraUserData, "documentSelection"),
    :schema_element => [
      ["selectionName", ["SOAP::SOAPQName", XSD::QName.new(nil, "selectionName")]],
      ["selectionType", ["SOAP::SOAPQName", XSD::QName.new(nil, "selectionType")]],
      ["selectionURI", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "selectionURI")]],
      ["selectionPath", ["SOAP::SOAPString", XSD::QName.new(nil, "selectionPath")]],
      ["selectionStart", ["SOAP::SOAPInt", XSD::QName.new(nil, "selectionStart")]],
      ["selectionEnd", ["SOAP::SOAPInt", XSD::QName.new(nil, "selectionEnd")]],
      ["selectionSummary", ["SOAP::SOAPString", XSD::QName.new(nil, "selectionSummary")]]
    ]
  )

  EncodedRegistry.register(
    :class => QuestionUninterpretableType,
    :schema_type => XSD::QName.new(NsAuraUserData, "QuestionUninterpretableType"),
    :schema_element => [
      ["html", ["SOAP::SOAPString", XSD::QName.new(nil, "html")], [0, 1]],
      ["partialCmap", ["QuestionConceptMap", XSD::QName.new(nil, "partialCmap")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => WordConceptMap,
    :schema_type => XSD::QName.new(NsAuraUserData, "WordConceptMap"),
    :schema_element => [
      ["word", ["SOAP::SOAPString", XSD::QName.new(nil, "word")], [0, 1]],
      ["partOfSpeech", ["SOAP::SOAPQName", XSD::QName.new(nil, "partOfSpeech")], [0, 1]],
      ["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PartitionData,
    :schema_type => XSD::QName.new(NsAuraUserData, "PartitionData"),
    :schema_element => [
      ["id", ["SOAP::SOAPQName", XSD::QName.new(nil, "id")], [0, 1]],
      ["members", ["QNameArray", XSD::QName.new(nil, "members")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => PartitionEdit,
    :schema_type => XSD::QName.new(NsAuraUserData, "PartitionEdit"),
    :schema_element => [
      ["operation", ["SOAP::SOAPQName", XSD::QName.new(nil, "operation")], [0, 1]],
      ["id", ["SOAP::SOAPQName", XSD::QName.new(nil, "id")], [0, 1]],
      ["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")], [0, 1]],
      ["members", ["QNameArray", XSD::QName.new(nil, "members")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => RelationInformation,
    :schema_type => XSD::QName.new(NsAuraUserData, "RelationInformation"),
    :schema_element => [
      ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")], [0, 1]],
      ["arity", ["SOAP::SOAPInt", XSD::QName.new(nil, "arity")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => WordSense,
    :schema_type => XSD::QName.new(NsAuraUserData, "WordSense"),
    :schema_element => [
      ["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")]],
      ["definition", ["SOAP::SOAPString", XSD::QName.new(nil, "definition")]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfNodes,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "GenericNode") }
  )

  EncodedRegistry.set(
    ArrayOfValues,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "PropertyValue") }
  )

  EncodedRegistry.set(
    ArrayOfEdges,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "Edge") }
  )

  EncodedRegistry.set(
    ArrayOfConstraints,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "Constraint") }
  )

  EncodedRegistry.set(
    ArrayOfEquations,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "Equation") }
  )

  EncodedRegistry.set(
    ArrayOfTables,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "NodeTable") }
  )

  EncodedRegistry.set(
    ConceptMapDiffsArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "ConceptMapDiff") }
  )

  EncodedRegistry.register(
    :class => LMapArgument,
    :schema_type => XSD::QName.new(NsAuraUserData, "LMapArgument"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["value", ["LMapArgumentValue", XSD::QName.new(nil, "value")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => UIAttributes,
    :schema_type => XSD::QName.new(NsAuraUserData, "UIAttributes"),
    :schema_element => [
      ["node", ["UIAttributesForNode", XSD::QName.new(nil, "node")], [0, 1]],
      ["edge", ["UIAttributesForEdge", XSD::QName.new(nil, "edge")], [0, 1]],
      ["table", ["UIAttributesForTable", XSD::QName.new(nil, "table")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => RelationOption,
    :schema_type => XSD::QName.new(NsAuraUserData, "RelationOption"),
    :schema_element => [
      ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]
    ]
  )

  EncodedRegistry.register(
    :class => ConnectRelationInvisibleType,
    :schema_type => XSD::QName.new(NsAuraUserData, "ConnectRelationInvisibleType"),
    :schema_element => [
      ["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")], [0, 1]],
      ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")], [0, 1]],
      ["target", ["SOAP::SOAPQName", XSD::QName.new(nil, "target")], [0, 1]],
      ["nodeToExpand", ["SOAP::SOAPQName", XSD::QName.new(nil, "nodeToExpand")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => InheritedContentModificationType,
    :schema_type => XSD::QName.new(NsAuraUserData, "InheritedContentModificationType"),
    :schema_element => [
      ["operation", ["SOAP::SOAPString", XSD::QName.new(nil, "operation")], [0, 1]],
      ["content", ["StringArray", XSD::QName.new(nil, "content")], [0, 1]],
      ["cause", ["SOAP::SOAPString", XSD::QName.new(nil, "cause")], [0, 1]],
      ["sourceAxiomClasses", ["QNameArray", XSD::QName.new(nil, "sourceAxiomClasses")], [0, 1]],
      ["sourcePrototypeClasses", ["QNameArray", XSD::QName.new(nil, "sourcePrototypeClasses")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ValidValueScales,
    :schema_type => XSD::QName.new(NsAuraUserData, "ValidValueScales"),
    :schema_element => [
      ["cardinal", ["CardinalValueScale", XSD::QName.new(nil, "cardinal")], [0, 1]],
      ["categorical", ["CategoricalValueScale", XSD::QName.new(nil, "categorical")], [0, 1]],
      ["scalar", ["ScalarValueScale", XSD::QName.new(nil, "scalar")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    FormulaComponentList,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "FormulaComponent") }
  )

  EncodedRegistry.register(
    :class => TermResult,
    :schema_type => XSD::QName.new(NsAuraUserData, "termResult"),
    :schema_element => [
      ["term", ["SOAP::SOAPString", XSD::QName.new(nil, "term")], [0, 1]],
      ["exact", ["ResultItemArray", XSD::QName.new(nil, "exact")], [0, 1]],
      ["partial", ["ResultItemArray", XSD::QName.new(nil, "partial")], [0, 1]],
      ["semantic", ["ResultItemArray", XSD::QName.new(nil, "semantic")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GAF,
    :schema_type => XSD::QName.new(NsAuraUserData, "GAF"),
    :schema_element => [
      ["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")], [0, 1]],
      ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")], [0, 1]],
      ["targets", ["QNameArray", XSD::QName.new(nil, "targets")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfParaphrases,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "Paraphrase") }
  )

  EncodedRegistry.set(
    ArrayOfSentences,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => QuestionConceptMap,
    :schema_type => XSD::QName.new(NsAuraUserData, "QuestionConceptMap"),
    :schema_element => [
      ["conceptMap", ["ConceptMap", XSD::QName.new(nil, "conceptMap")], [0, 1]],
      ["paraphrases", ["ArrayOfParaphrases", XSD::QName.new(nil, "paraphrases")], [0, 1]],
      ["sources", ["ArrayOfSentences", XSD::QName.new(nil, "sources")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    QNameArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "QName") }
  )

  EncodedRegistry.register(
    :class => Viewpoint,
    :schema_type => XSD::QName.new(NsAuraUserData, "Viewpoint"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")]],
      ["conceptMap", ["ConceptMap", XSD::QName.new(nil, "conceptMap")]],
      ["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")]],
      ["setupEdges", ["QNameArray", XSD::QName.new(nil, "setupEdges")]],
      ["setupNodes", ["QNameArray", XSD::QName.new(nil, "setupNodes")]],
      ["queryEdges", ["QNameArray", XSD::QName.new(nil, "queryEdges")]],
      ["queryNodes", ["QNameArray", XSD::QName.new(nil, "queryNodes")]],
      ["conceptEdges", ["QNameArray", XSD::QName.new(nil, "conceptEdges")]],
      ["conceptNodes", ["QNameArray", XSD::QName.new(nil, "conceptNodes")]],
      ["otherEdges", ["QNameArray", XSD::QName.new(nil, "otherEdges")]],
      ["otherNodes", ["QNameArray", XSD::QName.new(nil, "otherNodes")]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfGAFs,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "GAF") }
  )

  EncodedRegistry.set(
    StringArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    ArrayOfTermResult,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "termResult") }
  )

  EncodedRegistry.register(
    :class => Formula,
    :schema_type => XSD::QName.new(NsAuraUserData, "Formula"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["formalCharge", ["SOAP::SOAPInt", XSD::QName.new(nil, "formalCharge")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["formulaComponents", ["FormulaComponentList", XSD::QName.new(nil, "formulaComponents")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ValidValuesArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "ValidValueScales") }
  )

  EncodedRegistry.register(
    :class => SOAPServerType,
    :schema_type => XSD::QName.new(NsAuraUserData, "SOAPServerType"),
    :schema_element => [
      ["el0", ["ConnectRelationInvisibleType", XSD::QName.new(nil, "el0")], [0, 1]],
      ["el1", ["InheritedContentModificationType", XSD::QName.new(nil, "el1")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfViewpoints,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "Viewpoint") }
  )

  EncodedRegistry.set(
    ArrayOfRelationOptions,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "RelationOption") }
  )

  EncodedRegistry.set(
    UIAttributeArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "UIAttributes") }
  )

  EncodedRegistry.set(
    LMapArgumentTable,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "LMapArgument") }
  )

  EncodedRegistry.register(
    :class => ConceptMapEditSummary,
    :schema_type => XSD::QName.new(NsAuraUserData, "ConceptMapEditSummary"),
    :schema_element => [
      ["initial", ["ConceptMap", XSD::QName.new(nil, "initial")], [0, 1]],
      ["final", ["ConceptMap", XSD::QName.new(nil, "final")], [0, 1]],
      ["differences", ["ConceptMapDiffsArray", XSD::QName.new(nil, "differences")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ConceptMap,
    :schema_type => XSD::QName.new(NsAuraUserData, "ConceptMap"),
    :schema_element => [
      ["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")]],
      ["isEditable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEditable")]],
      ["isDisconnected", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisconnected")]],
      ["nodes", ["ArrayOfNodes", XSD::QName.new(nil, "nodes")]],
      ["values", ["ArrayOfValues", XSD::QName.new(nil, "values")]],
      ["edges", ["ArrayOfEdges", XSD::QName.new(nil, "edges")]],
      ["constraints", ["ArrayOfConstraints", XSD::QName.new(nil, "constraints")]],
      ["equations", ["ArrayOfEquations", XSD::QName.new(nil, "equations")]],
      ["tables", ["ArrayOfTables", XSD::QName.new(nil, "tables")]],
      ["knockonUnifications", ["QNameArray", XSD::QName.new(nil, "knockonUnifications")]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfWordSenses,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "WordSense") }
  )

  EncodedRegistry.set(
    SOAPServerType002,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "RelationInformation") }
  )

  EncodedRegistry.set(
    PartitionEditsArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "PartitionEdit") }
  )

  EncodedRegistry.set(
    PartitionsArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "PartitionData") }
  )

  EncodedRegistry.set(
    VocabularyArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "WordConceptMap") }
  )

  EncodedRegistry.register(
    :class => SOAPServerType003,
    :schema_type => XSD::QName.new(NsAuraUserData, "SOAPServerType003"),
    :schema_element => [
      ["el0", ["QuestionUninterpretableType", XSD::QName.new(nil, "el0")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    DocumentSelectionArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "documentSelection") }
  )

  EncodedRegistry.register(
    :class => Reaction,
    :schema_type => XSD::QName.new(NsAuraUserData, "Reaction"),
    :schema_element => [
      ["reactantList", ["ReactionParticipantList", XSD::QName.new(nil, "reactantList")], [0, 1]],
      ["productList", ["ReactionParticipantList", XSD::QName.new(nil, "productList")], [0, 1]],
      ["direction", ["SOAP::SOAPQName", XSD::QName.new(nil, "direction")], [0, 1]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfDirtParaphrases,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsAuraUserData, "DirtParaphrase") }
  )

  LiteralRegistry.register(
    :class => TableCell,
    :schema_type => XSD::QName.new(NsAuraUserData, "TableCell"),
    :schema_element => [
      ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")], [0, 1]],
      ["value", ["PropertyValue", XSD::QName.new(nil, "value")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Literal,
    :schema_type => XSD::QName.new(NsAuraUserData, "Literal"),
    :schema_element => [
      ["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")], [0, 1]],
      ["targets", ["QNameArray", XSD::QName.new(nil, "targets")], [0, 1]],
      ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")], [0, 1]],
      ["isNegated", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNegated")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => NAryArgument,
    :schema_type => XSD::QName.new(NsAuraUserData, "NAryArgument"),
    :schema_element => [
      ["var", ["SOAP::SOAPQName", XSD::QName.new(nil, "var")], [0, 1]],
      ["ival", ["SOAP::SOAPInt", XSD::QName.new(nil, "ival")], [0, 1]],
      ["fval", ["SOAP::SOAPFloat", XSD::QName.new(nil, "fval")], [0, 1]],
      ["subnode", ["NAryNode", XSD::QName.new(nil, "subnode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TableColumn,
    :schema_type => XSD::QName.new(NsAuraUserData, "TableColumn"),
    :schema_element => [
      ["header", ["SOAP::SOAPQName", XSD::QName.new(nil, "header")], [0, 1]],
      ["order", ["SOAP::SOAPInt", XSD::QName.new(nil, "order")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ClibClass,
    :schema_type => XSD::QName.new(NsAuraUserData, "clibClass"),
    :schema_element => [
      ["value", ["SOAP::SOAPQName", XSD::QName.new(nil, "value")], [0, 1]],
      ["entity", ["EntityType", XSD::QName.new(nil, "Entity")], [0, 1]],
      ["event", ["EventType", XSD::QName.new(nil, "Event")], [0, 1]],
      ["role", ["RoleType", XSD::QName.new(nil, "Role")], [0, 1]],
      ["property_Value", ["PropertyValueType", XSD::QName.new(nil, "Property-Value")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TemplateInstance,
    :schema_type => XSD::QName.new(NsAuraUserData, "templateInstance"),
    :schema_element => [
      ["instance", ["SOAP::SOAPQName", XSD::QName.new(nil, "instance")], [0, 1]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EntityType,
    :schema_type => XSD::QName.new(NsAuraUserData, "Entity-Type"),
    :schema_element => [
      ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")], [0, 1]],
      ["templateInstance", ["TemplateInstance", XSD::QName.new(nil, "templateInstance")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => EventType,
    :schema_type => XSD::QName.new(NsAuraUserData, "Event-Type"),
    :schema_element => [
      ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")], [0, 1]],
      ["templateInstance", ["TemplateInstance", XSD::QName.new(nil, "templateInstance")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RoleType,
    :schema_type => XSD::QName.new(NsAuraUserData, "Role-Type"),
    :schema_element => [
      ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")], [0, 1]],
      ["templateInstance", ["TemplateInstance", XSD::QName.new(nil, "templateInstance")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PropertyValueType,
    :schema_type => XSD::QName.new(NsAuraUserData, "Property-Value-Type"),
    :schema_element => [
      ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")], [0, 1]],
      ["templateInstance", ["TemplateInstance", XSD::QName.new(nil, "templateInstance")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SlotType,
    :schema_type => XSD::QName.new(NsAuraUserData, "Slot-Type"),
    :schema_element => [
      ["name", ["SOAP::SOAPQName[]", XSD::QName.new(nil, "name")], [0, nil]],
      ["domain", ["ClibClass[]", XSD::QName.new(nil, "domain")], [0, nil]],
      ["range", ["ClibClass[]", XSD::QName.new(nil, "range")], [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Atom,
    :schema_type => XSD::QName.new(NsAuraUserData, "Atom"),
    :schema_element => [
      ["elementType", ["SOAP::SOAPString", XSD::QName.new(nil, "elementType")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => QNameMap,
    :schema_type => XSD::QName.new(NsAuraUserData, "QNameMap"),
    :schema_element => [
      ["key", ["SOAP::SOAPQName", XSD::QName.new(nil, "key")], [0, 1]],
      ["value", ["SOAP::SOAPQName", XSD::QName.new(nil, "value")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CardinalityConstraintTerm,
    :schema_type => XSD::QName.new(NsAuraUserData, "CardinalityConstraintTerm"),
    :schema_element => [
      ["operator", ["SOAP::SOAPQName", XSD::QName.new(nil, "operator")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TypeConstraintTerm,
    :schema_type => XSD::QName.new(NsAuraUserData, "TypeConstraintTerm"),
    :schema_element => [
      ["operator", ["SOAP::SOAPQName", XSD::QName.new(nil, "operator")], [0, 1]],
      ["v_class", ["SOAP::SOAPQName", XSD::QName.new(nil, "class")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DocumentationElement,
    :schema_type => XSD::QName.new(NsAuraUserData, "DocumentationElement"),
    :schema_element => [
      ["string", ["SOAP::SOAPString", XSD::QName.new(nil, "string")], [0, 1]],
      ["reference", ["SOAP::SOAPQName", XSD::QName.new(nil, "reference")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Molecule,
    :schema_type => XSD::QName.new(NsAuraUserData, "Molecule"),
    :schema_element => [
      ["formula", ["Formula", XSD::QName.new(nil, "formula")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BasicNode,
    :schema_type => XSD::QName.new(NsAuraUserData, "BasicNode"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]],
      ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")], [0, 1]],
      ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")], [0, 1]],
      ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")], [0, 1]],
      ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")], [0, 1]],
      ["userDefinedLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "userDefinedLabel")], [0, 1]],
      ["type", ["SOAP::SOAPQName", XSD::QName.new(nil, "type")], [0, 1]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")], [0, 1]],
      ["expansionState", ["SOAP::SOAPQName", XSD::QName.new(nil, "expansionState")], [0, 1]],
      ["isRoot", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isRoot")], [0, 1]],
      ["isQueryNode", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isQueryNode")], [0, 1]],
      ["isNamedIndividual", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNamedIndividual")], [0, 1]],
      ["paraphrase", ["SOAP::SOAPInteger", XSD::QName.new(nil, "paraphrase")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => BigNode,
    :schema_type => XSD::QName.new(NsAuraUserData, "BigNode"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")]],
      ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")]],
      ["position", ["Position", XSD::QName.new(nil, "position")]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")]],
      ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")]],
      ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")]],
      ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")]],
      ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")]],
      ["userDefinedLabel", ["SOAP::SOAPString", XSD::QName.new(nil, "userDefinedLabel")]],
      ["type", ["SOAP::SOAPQName", XSD::QName.new(nil, "type")]],
      ["comment", ["SOAP::SOAPString", XSD::QName.new(nil, "comment")]],
      ["expansionState", ["SOAP::SOAPQName", XSD::QName.new(nil, "expansionState")]],
      ["isRoot", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isRoot")]],
      ["isOpen", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isOpen")]],
      ["canBeTrigger", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "canBeTrigger")]],
      ["canBeNegation", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "canBeNegation")]],
      ["canBeSalient", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "canBeSalient")]],
      ["subGraph", ["QNameArray", XSD::QName.new(nil, "subGraph")]]
    ]
  )

  LiteralRegistry.register(
    :class => Position,
    :schema_type => XSD::QName.new(NsAuraUserData, "Position"),
    :schema_element => [
      ["x", ["SOAP::SOAPInt", XSD::QName.new(nil, "x")]],
      ["y", ["SOAP::SOAPInt", XSD::QName.new(nil, "y")]]
    ]
  )

  LiteralRegistry.register(
    :class => LogicalFormula,
    :schema_type => XSD::QName.new(NsAuraUserData, "LogicalFormula"),
    :schema_element => [
      ["operator", ["SOAP::SOAPQName", XSD::QName.new(nil, "operator")], [0, 1]],
      ["literals", ["ArrayOfLiterals", XSD::QName.new(nil, "literals")], [0, 1]],
      ["formulas", ["ArrayOfLogicalFormulas", XSD::QName.new(nil, "formulas")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ConstraintTermHolder,
    :schema_type => XSD::QName.new(NsAuraUserData, "ConstraintTermHolder"),
    :schema_element => [
      ["cardinalityConstraint", ["CardinalityConstraintTerm", XSD::QName.new(nil, "cardinalityConstraint")], [0, 1]],
      ["typeConstraint", ["TypeConstraintTerm", XSD::QName.new(nil, "typeConstraint")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ConstraintNodeAttributes,
    :schema_type => XSD::QName.new(NsAuraUserData, "ConstraintNodeAttributes"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]],
      ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")], [0, 1]],
      ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")], [0, 1]],
      ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")], [0, 1]],
      ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ConstraintEdgeAttributes,
    :schema_type => XSD::QName.new(NsAuraUserData, "ConstraintEdgeAttributes"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]],
      ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")], [0, 1]],
      ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")], [0, 1]],
      ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")], [0, 1]],
      ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => NAryNode,
    :schema_type => XSD::QName.new(NsAuraUserData, "NAryNode"),
    :schema_element => [
      ["operator", ["SOAP::SOAPQName", XSD::QName.new(nil, "operator")], [0, 1]],
      ["arguments", ["NAryArgumentArray", XSD::QName.new(nil, "arguments")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Table,
    :schema_type => XSD::QName.new(NsAuraUserData, "Table"),
    :schema_element => [
      ["columns", ["ArrayOfTableColumns", XSD::QName.new(nil, "columns")], [0, 1]],
      ["rows", ["ArrayOfTableRows", XSD::QName.new(nil, "rows")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UnificationDiff,
    :schema_type => XSD::QName.new(NsAuraUserData, "UnificationDiff"),
    :schema_element => [
      ["node1", ["SOAP::SOAPQName", XSD::QName.new(nil, "node1")], [0, 1]],
      ["node2", ["SOAP::SOAPQName", XSD::QName.new(nil, "node2")], [0, 1]],
      ["result", ["SOAP::SOAPQName", XSD::QName.new(nil, "result")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResultItem,
    :schema_type => XSD::QName.new(NsAuraUserData, "resultItem"),
    :schema_element => [
      ["value", ["SOAP::SOAPQName", XSD::QName.new(nil, "value")], [0, 1]],
      ["entity", ["EntityType", XSD::QName.new(nil, "Entity")], [0, 1]],
      ["event", ["EventType", XSD::QName.new(nil, "Event")], [0, 1]],
      ["role", ["RoleType", XSD::QName.new(nil, "Role")], [0, 1]],
      ["property_Value", ["PropertyValueType", XSD::QName.new(nil, "Property-Value")], [0, 1]],
      ["slot", ["SlotType", XSD::QName.new(nil, "Slot")], [0, 1]],
      ["instance", ["SOAP::SOAPQName", XSD::QName.new(nil, "instance")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Paraphrase,
    :schema_type => XSD::QName.new(NsAuraUserData, "Paraphrase"),
    :schema_element => [
      ["sentence", ["SOAP::SOAPString", XSD::QName.new(nil, "sentence")], [0, 1]],
      ["node", ["SOAP::SOAPQName", XSD::QName.new(nil, "node")], [0, 1]],
      ["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")], [0, 1]],
      ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")], [0, 1]],
      ["target", ["SOAP::SOAPQName", XSD::QName.new(nil, "target")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => FormulaComponent,
    :schema_type => XSD::QName.new(NsAuraUserData, "FormulaComponent"),
    :schema_element => [
      ["atomArray", ["AtomArray", XSD::QName.new(nil, "atomArray")], [0, 1]],
      ["formula", ["Formula", XSD::QName.new(nil, "formula")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CardinalValueScale,
    :schema_type => XSD::QName.new(NsAuraUserData, "CardinalValueScale"),
    :schema_element => [
      ["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")], [0, 1]],
      ["isSpecializable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isSpecializable")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => CategoricalValueScale,
    :schema_type => XSD::QName.new(NsAuraUserData, "CategoricalValueScale"),
    :schema_element => [
      ["values", ["QNameArray", XSD::QName.new(nil, "values")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ScalarValueScale,
    :schema_type => XSD::QName.new(NsAuraUserData, "ScalarValueScale"),
    :schema_element => [
      ["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")], [0, 1]],
      ["domains", ["QNameArray", XSD::QName.new(nil, "domains")], [0, 1]],
      ["values", ["QNameArray", XSD::QName.new(nil, "values")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UIAttributesForNode,
    :schema_type => XSD::QName.new(NsAuraUserData, "UIAttributesForNode"),
    :schema_element => [
      ["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UIAttributesForEdge,
    :schema_type => XSD::QName.new(NsAuraUserData, "UIAttributesForEdge"),
    :schema_element => [
      ["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")], [0, 1]],
      ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")], [0, 1]],
      ["targets", ["QNameArray", XSD::QName.new(nil, "targets")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UIAttributesForTable,
    :schema_type => XSD::QName.new(NsAuraUserData, "UIAttributesForTable"),
    :schema_element => [
      ["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => LMapArgumentValue,
    :schema_type => XSD::QName.new(NsAuraUserData, "LMapArgumentValue"),
    :schema_element => [
      ["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")], [0, 1]],
      ["conceptList", ["QNameArray", XSD::QName.new(nil, "conceptList")], [0, 1]],
      ["gaf", ["GAF", XSD::QName.new(nil, "gaf")], [0, 1]],
      ["gafList", ["ArrayOfGAFs", XSD::QName.new(nil, "gafList")], [0, 1]],
      ["stringValue", ["SOAP::SOAPString", XSD::QName.new(nil, "stringValue")], [0, 1]],
      ["intValue", ["SOAP::SOAPInt", XSD::QName.new(nil, "intValue")], [0, 1]],
      ["boolValue", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "boolValue")], [0, 1]],
      ["operatorTree", ["NAryNode", XSD::QName.new(nil, "operatorTree")], [0, 1]],
      ["nameMap", ["QNameTable", XSD::QName.new(nil, "nameMap")], [0, 1]],
      ["constraintTerms", ["ArrayOfConstraintTerms", XSD::QName.new(nil, "constraintTerms")], [0, 1]],
      ["logicalFormula", ["LogicalFormula", XSD::QName.new(nil, "logicalFormula")], [0, 1]],
      ["propertyValues", ["ArrayOfValues", XSD::QName.new(nil, "propertyValues")], [0, 1]],
      ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")], [0, 1]],
      ["table", ["Table", XSD::QName.new(nil, "table")], [0, 1]],
      ["synonyms", ["VocabularyArray", XSD::QName.new(nil, "synonyms")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ConceptMapDiff,
    :schema_type => XSD::QName.new(NsAuraUserData, "ConceptMapDiff"),
    :schema_element => [
      ["unification", ["UnificationDiff", XSD::QName.new(nil, "unification")], [0, 1]],
      ["addedFact", ["SOAP::SOAPQName", XSD::QName.new(nil, "addedFact")], [0, 1]],
      ["addedIndividual", ["SOAP::SOAPQName", XSD::QName.new(nil, "addedIndividual")], [0, 1]],
      ["deletedFact", ["SOAP::SOAPQName", XSD::QName.new(nil, "deletedFact")], [0, 1]],
      ["deletedIndividual", ["SOAP::SOAPQName", XSD::QName.new(nil, "deletedIndividual")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => NodeTable,
    :schema_type => XSD::QName.new(NsAuraUserData, "NodeTable"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]],
      ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")], [0, 1]],
      ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")], [0, 1]],
      ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")], [0, 1]],
      ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")], [0, 1]],
      ["node", ["SOAP::SOAPQName", XSD::QName.new(nil, "node")], [0, 1]],
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["table", ["Table", XSD::QName.new(nil, "table")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Equation,
    :schema_type => XSD::QName.new(NsAuraUserData, "Equation"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["equation", ["NAryNode", XSD::QName.new(nil, "equation")], [0, 1]],
      ["bindings", ["QNameTable", XSD::QName.new(nil, "bindings")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Constraint,
    :schema_type => XSD::QName.new(NsAuraUserData, "Constraint"),
    :schema_element => [
      ["constraintTerm", ["ConstraintTermHolder", XSD::QName.new(nil, "constraintTerm")], [0, 1]],
      ["node", ["SOAP::SOAPQName", XSD::QName.new(nil, "node")], [0, 1]],
      ["slot", ["SOAP::SOAPQName", XSD::QName.new(nil, "slot")], [0, 1]],
      ["constrainedNodes", ["QNameArray", XSD::QName.new(nil, "constrainedNodes")], [0, 1]],
      ["nodeAttributes", ["ConstraintNodeAttributes", XSD::QName.new(nil, "nodeAttributes")], [0, 1]],
      ["edgeAttributes", ["ConstraintEdgeAttributes", XSD::QName.new(nil, "edgeAttributes")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Edge,
    :schema_type => XSD::QName.new(NsAuraUserData, "Edge"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["documentation", ["Documentation", XSD::QName.new(nil, "documentation")], [0, 1]],
      ["position", ["Position", XSD::QName.new(nil, "position")], [0, 1]],
      ["isVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isVisible")], [0, 1]],
      ["isNeverVisible", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNeverVisible")], [0, 1]],
      ["isViewed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isViewed")], [0, 1]],
      ["isDisplayed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisplayed")], [0, 1]],
      ["isEnclosed", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEnclosed")], [0, 1]],
      ["isNew", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isNew")], [0, 1]],
      ["gaf", ["GAF", XSD::QName.new(nil, "gaf")], [0, 1]],
      ["condition", ["LogicalFormula", XSD::QName.new(nil, "condition")], [0, 1]],
      ["isQuery", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isQuery")], [0, 1]],
      ["paraphrase", ["SOAP::SOAPInteger", XSD::QName.new(nil, "paraphrase")], [0, 1]],
      ["supports", ["QNameArray", XSD::QName.new(nil, "supports")], [0, 1]],
      ["isInterface", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isInterface")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PropertyValue,
    :schema_type => XSD::QName.new(NsAuraUserData, "PropertyValue"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")], [0, 1]],
      ["label", ["SOAP::SOAPString", XSD::QName.new(nil, "label")], [0, 1]],
      ["type", ["SOAP::SOAPQName", XSD::QName.new(nil, "type")], [0, 1]],
      ["unit", ["SOAP::SOAPQName", XSD::QName.new(nil, "unit")], [0, 1]],
      ["magnitude", ["SOAP::SOAPFloat", XSD::QName.new(nil, "magnitude")], [0, 1]],
      ["scale", ["SOAP::SOAPQName", XSD::QName.new(nil, "scale")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GenericNode,
    :schema_type => XSD::QName.new(NsAuraUserData, "GenericNode"),
    :schema_element => [
      ["basicNode", ["BasicNode", XSD::QName.new(nil, "basicNode")], [0, 1]],
      ["bigNode", ["BigNode", XSD::QName.new(nil, "bigNode")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ReactionParticipant,
    :schema_type => XSD::QName.new(NsAuraUserData, "ReactionParticipant"),
    :schema_element => [
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["molecule", ["Molecule", XSD::QName.new(nil, "molecule")], [0, 1]],
      ["state", ["SOAP::SOAPQName", XSD::QName.new(nil, "state")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DirtParaphrase,
    :schema_type => XSD::QName.new(NsAuraUserData, "DirtParaphrase"),
    :schema_element => [
      ["paraphraseID", ["SOAP::SOAPString", XSD::QName.new(nil, "paraphraseID")], [0, 1]],
      ["paraphraseString", ["SOAP::SOAPString", XSD::QName.new(nil, "paraphraseString")], [0, 1]],
      ["blockedP", ["SOAP::SOAPQName", XSD::QName.new(nil, "blockedP")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => DocumentSelection,
    :schema_type => XSD::QName.new(NsAuraUserData, "documentSelection"),
    :schema_element => [
      ["selectionName", ["SOAP::SOAPQName", XSD::QName.new(nil, "selectionName")]],
      ["selectionType", ["SOAP::SOAPQName", XSD::QName.new(nil, "selectionType")]],
      ["selectionURI", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "selectionURI")]],
      ["selectionPath", ["SOAP::SOAPString", XSD::QName.new(nil, "selectionPath")]],
      ["selectionStart", ["SOAP::SOAPInt", XSD::QName.new(nil, "selectionStart")]],
      ["selectionEnd", ["SOAP::SOAPInt", XSD::QName.new(nil, "selectionEnd")]],
      ["selectionSummary", ["SOAP::SOAPString", XSD::QName.new(nil, "selectionSummary")]]
    ]
  )

  LiteralRegistry.register(
    :class => QuestionUninterpretableType,
    :schema_type => XSD::QName.new(NsAuraUserData, "QuestionUninterpretableType"),
    :schema_element => [
      ["html", ["SOAP::SOAPString", XSD::QName.new(nil, "html")], [0, 1]],
      ["partialCmap", ["QuestionConceptMap", XSD::QName.new(nil, "partialCmap")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => WordConceptMap,
    :schema_type => XSD::QName.new(NsAuraUserData, "WordConceptMap"),
    :schema_element => [
      ["word", ["SOAP::SOAPString", XSD::QName.new(nil, "word")], [0, 1]],
      ["partOfSpeech", ["SOAP::SOAPQName", XSD::QName.new(nil, "partOfSpeech")], [0, 1]],
      ["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PartitionData,
    :schema_type => XSD::QName.new(NsAuraUserData, "PartitionData"),
    :schema_element => [
      ["id", ["SOAP::SOAPQName", XSD::QName.new(nil, "id")], [0, 1]],
      ["members", ["QNameArray", XSD::QName.new(nil, "members")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => PartitionEdit,
    :schema_type => XSD::QName.new(NsAuraUserData, "PartitionEdit"),
    :schema_element => [
      ["operation", ["SOAP::SOAPQName", XSD::QName.new(nil, "operation")], [0, 1]],
      ["id", ["SOAP::SOAPQName", XSD::QName.new(nil, "id")], [0, 1]],
      ["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")], [0, 1]],
      ["members", ["QNameArray", XSD::QName.new(nil, "members")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RelationInformation,
    :schema_type => XSD::QName.new(NsAuraUserData, "RelationInformation"),
    :schema_element => [
      ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")], [0, 1]],
      ["arity", ["SOAP::SOAPInt", XSD::QName.new(nil, "arity")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => WordSense,
    :schema_type => XSD::QName.new(NsAuraUserData, "WordSense"),
    :schema_element => [
      ["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")]],
      ["definition", ["SOAP::SOAPString", XSD::QName.new(nil, "definition")]]
    ]
  )

  LiteralRegistry.register(
    :class => LMapArgument,
    :schema_type => XSD::QName.new(NsAuraUserData, "LMapArgument"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")], [0, 1]],
      ["value", ["LMapArgumentValue", XSD::QName.new(nil, "value")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => UIAttributes,
    :schema_type => XSD::QName.new(NsAuraUserData, "UIAttributes"),
    :schema_element => [
      ["node", ["UIAttributesForNode", XSD::QName.new(nil, "node")], [0, 1]],
      ["edge", ["UIAttributesForEdge", XSD::QName.new(nil, "edge")], [0, 1]],
      ["table", ["UIAttributesForTable", XSD::QName.new(nil, "table")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => RelationOption,
    :schema_type => XSD::QName.new(NsAuraUserData, "RelationOption"),
    :schema_element => [
      ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "description")]]
    ]
  )

  LiteralRegistry.register(
    :class => ConnectRelationInvisibleType,
    :schema_type => XSD::QName.new(NsAuraUserData, "ConnectRelationInvisibleType"),
    :schema_element => [
      ["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")], [0, 1]],
      ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")], [0, 1]],
      ["target", ["SOAP::SOAPQName", XSD::QName.new(nil, "target")], [0, 1]],
      ["nodeToExpand", ["SOAP::SOAPQName", XSD::QName.new(nil, "nodeToExpand")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => InheritedContentModificationType,
    :schema_type => XSD::QName.new(NsAuraUserData, "InheritedContentModificationType"),
    :schema_element => [
      ["operation", ["SOAP::SOAPString", XSD::QName.new(nil, "operation")], [0, 1]],
      ["content", ["StringArray", XSD::QName.new(nil, "content")], [0, 1]],
      ["cause", ["SOAP::SOAPString", XSD::QName.new(nil, "cause")], [0, 1]],
      ["sourceAxiomClasses", ["QNameArray", XSD::QName.new(nil, "sourceAxiomClasses")], [0, 1]],
      ["sourcePrototypeClasses", ["QNameArray", XSD::QName.new(nil, "sourcePrototypeClasses")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ValidValueScales,
    :schema_type => XSD::QName.new(NsAuraUserData, "ValidValueScales"),
    :schema_element => [
      ["cardinal", ["CardinalValueScale", XSD::QName.new(nil, "cardinal")], [0, 1]],
      ["categorical", ["CategoricalValueScale", XSD::QName.new(nil, "categorical")], [0, 1]],
      ["scalar", ["ScalarValueScale", XSD::QName.new(nil, "scalar")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => TermResult,
    :schema_type => XSD::QName.new(NsAuraUserData, "termResult"),
    :schema_element => [
      ["term", ["SOAP::SOAPString", XSD::QName.new(nil, "term")], [0, 1]],
      ["exact", ["ResultItemArray", XSD::QName.new(nil, "exact")], [0, 1]],
      ["partial", ["ResultItemArray", XSD::QName.new(nil, "partial")], [0, 1]],
      ["semantic", ["ResultItemArray", XSD::QName.new(nil, "semantic")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GAF,
    :schema_type => XSD::QName.new(NsAuraUserData, "GAF"),
    :schema_element => [
      ["source", ["SOAP::SOAPQName", XSD::QName.new(nil, "source")], [0, 1]],
      ["relation", ["SOAP::SOAPQName", XSD::QName.new(nil, "relation")], [0, 1]],
      ["targets", ["QNameArray", XSD::QName.new(nil, "targets")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => QuestionConceptMap,
    :schema_type => XSD::QName.new(NsAuraUserData, "QuestionConceptMap"),
    :schema_element => [
      ["conceptMap", ["ConceptMap", XSD::QName.new(nil, "conceptMap")], [0, 1]],
      ["paraphrases", ["ArrayOfParaphrases", XSD::QName.new(nil, "paraphrases")], [0, 1]],
      ["sources", ["ArrayOfSentences", XSD::QName.new(nil, "sources")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Viewpoint,
    :schema_type => XSD::QName.new(NsAuraUserData, "Viewpoint"),
    :schema_element => [
      ["identifier", ["SOAP::SOAPQName", XSD::QName.new(nil, "identifier")]],
      ["conceptMap", ["ConceptMap", XSD::QName.new(nil, "conceptMap")]],
      ["concept", ["SOAP::SOAPQName", XSD::QName.new(nil, "concept")]],
      ["setupEdges", ["QNameArray", XSD::QName.new(nil, "setupEdges")]],
      ["setupNodes", ["QNameArray", XSD::QName.new(nil, "setupNodes")]],
      ["queryEdges", ["QNameArray", XSD::QName.new(nil, "queryEdges")]],
      ["queryNodes", ["QNameArray", XSD::QName.new(nil, "queryNodes")]],
      ["conceptEdges", ["QNameArray", XSD::QName.new(nil, "conceptEdges")]],
      ["conceptNodes", ["QNameArray", XSD::QName.new(nil, "conceptNodes")]],
      ["otherEdges", ["QNameArray", XSD::QName.new(nil, "otherEdges")]],
      ["otherNodes", ["QNameArray", XSD::QName.new(nil, "otherNodes")]]
    ]
  )

  LiteralRegistry.register(
    :class => Formula,
    :schema_type => XSD::QName.new(NsAuraUserData, "Formula"),
    :schema_element => [
      ["title", ["SOAP::SOAPString", XSD::QName.new(nil, "title")], [0, 1]],
      ["formalCharge", ["SOAP::SOAPInt", XSD::QName.new(nil, "formalCharge")], [0, 1]],
      ["count", ["SOAP::SOAPInt", XSD::QName.new(nil, "count")], [0, 1]],
      ["formulaComponents", ["FormulaComponentList", XSD::QName.new(nil, "formulaComponents")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SOAPServerType,
    :schema_type => XSD::QName.new(NsAuraUserData, "SOAPServerType"),
    :schema_element => [
      ["el0", ["ConnectRelationInvisibleType", XSD::QName.new(nil, "el0")], [0, 1]],
      ["el1", ["InheritedContentModificationType", XSD::QName.new(nil, "el1")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ConceptMapEditSummary,
    :schema_type => XSD::QName.new(NsAuraUserData, "ConceptMapEditSummary"),
    :schema_element => [
      ["initial", ["ConceptMap", XSD::QName.new(nil, "initial")], [0, 1]],
      ["final", ["ConceptMap", XSD::QName.new(nil, "final")], [0, 1]],
      ["differences", ["ConceptMapDiffsArray", XSD::QName.new(nil, "differences")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ConceptMap,
    :schema_type => XSD::QName.new(NsAuraUserData, "ConceptMap"),
    :schema_element => [
      ["name", ["SOAP::SOAPQName", XSD::QName.new(nil, "name")]],
      ["isEditable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isEditable")]],
      ["isDisconnected", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "isDisconnected")]],
      ["nodes", ["ArrayOfNodes", XSD::QName.new(nil, "nodes")]],
      ["values", ["ArrayOfValues", XSD::QName.new(nil, "values")]],
      ["edges", ["ArrayOfEdges", XSD::QName.new(nil, "edges")]],
      ["constraints", ["ArrayOfConstraints", XSD::QName.new(nil, "constraints")]],
      ["equations", ["ArrayOfEquations", XSD::QName.new(nil, "equations")]],
      ["tables", ["ArrayOfTables", XSD::QName.new(nil, "tables")]],
      ["knockonUnifications", ["QNameArray", XSD::QName.new(nil, "knockonUnifications")]]
    ]
  )

  LiteralRegistry.register(
    :class => SOAPServerType003,
    :schema_type => XSD::QName.new(NsAuraUserData, "SOAPServerType003"),
    :schema_element => [
      ["el0", ["QuestionUninterpretableType", XSD::QName.new(nil, "el0")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Reaction,
    :schema_type => XSD::QName.new(NsAuraUserData, "Reaction"),
    :schema_element => [
      ["reactantList", ["ReactionParticipantList", XSD::QName.new(nil, "reactantList")], [0, 1]],
      ["productList", ["ReactionParticipantList", XSD::QName.new(nil, "productList")], [0, 1]],
      ["direction", ["SOAP::SOAPQName", XSD::QName.new(nil, "direction")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SOAPServerType,
    :schema_name => XSD::QName.new(NsAuraUserData, "dummy"),
    :schema_element => [
      ["el0", ["ConnectRelationInvisibleType", XSD::QName.new(nil, "el0")], [0, 1]],
      ["el1", ["InheritedContentModificationType", XSD::QName.new(nil, "el1")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SOAPServerType003,
    :schema_name => XSD::QName.new(NsAuraUserData, "dummy2"),
    :schema_element => [
      ["el0", ["QuestionUninterpretableType", XSD::QName.new(nil, "el0")], [0, 1]]
    ]
  )
end
