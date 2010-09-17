require 'soap/default.rb'

require 'soap/rpc/driver'

class SOAPServerPort < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://localhost:8000/SOAP"
  MappingRegistry = ::SOAP::Mapping::Registry.new

  MappingRegistry.set(
    QuestionConceptMap,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "QuestionConceptMap") }
  )
  MappingRegistry.set(
    ConceptMap,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "ConceptMap") }
  )
  MappingRegistry.set(
    ArrayOfNodes,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "GenericNode") }
  )
  MappingRegistry.set(
    ArrayOfValues,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "PropertyValue") }
  )
  MappingRegistry.set(
    ArrayOfEdges,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "Edge") }
  )
  MappingRegistry.set(
    ArrayOfConstraints,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "Constraint") }
  )
  MappingRegistry.set(
    ArrayOfEquations,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "Equation") }
  )
  MappingRegistry.set(
    ArrayOfTables,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "NodeTable") }
  )
  MappingRegistry.set(
    QNameArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "QName") }
  )
  MappingRegistry.set(
    ArrayOfParaphrases,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "Paraphrase") }
  )
  MappingRegistry.set(
    ArrayOfSentences,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )
  MappingRegistry.set(
    Viewpoint,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "Viewpoint") }
  )
  MappingRegistry.set(
    ArrayOfGAFs,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "GAF") }
  )
  MappingRegistry.set(
    StringArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )
  MappingRegistry.set(
    ArrayOfTermResult,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "termResult") }
  )
  MappingRegistry.set(
    Formula,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "Formula") }
  )
  MappingRegistry.set(
    FormulaComponentList,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "FormulaComponent") }
  )
  MappingRegistry.set(
    ValidValuesArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "ValidValueScales") }
  )
  MappingRegistry.set(
    ArrayOfViewpoints,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "Viewpoint") }
  )
  MappingRegistry.set(
    ArrayOfRelationOptions,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "RelationOption") }
  )
  MappingRegistry.set(
    LMapArgumentTable,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "LMapArgument") }
  )
  MappingRegistry.set(
    UIAttributeArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "UIAttributes") }
  )
  MappingRegistry.set(
    ConceptMapEditSummary,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "ConceptMapEditSummary") }
  )
  MappingRegistry.set(
    ConceptMapDiffsArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "ConceptMapDiff") }
  )
  MappingRegistry.set(
    ArrayOfWordSenses,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "WordSense") }
  )
  MappingRegistry.set(
    PartitionsArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "PartitionData") }
  )
  MappingRegistry.set(
    PartitionEditsArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "PartitionEdit") }
  )
  MappingRegistry.set(
    VocabularyArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "WordConceptMap") }
  )
  MappingRegistry.set(
    DocumentSelectionArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "documentSelection") }
  )
  MappingRegistry.set(
    Reaction,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "Reaction") }
  )
  MappingRegistry.set(
    ReactionParticipantList,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "ReactionParticipant") }
  )
  MappingRegistry.set(
    ArrayOfDirtParaphrases,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::Registry::TypedArrayFactory,
    { :type => XSD::QName.new("urn:auraUserData", "DirtParaphrase") }
  )
  MappingRegistry.set(
    GenericNode,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "GenericNode") }
  )
  MappingRegistry.set(
    PropertyValue,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "PropertyValue") }
  )
  MappingRegistry.set(
    Edge,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "Edge") }
  )
  MappingRegistry.set(
    Constraint,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "Constraint") }
  )
  MappingRegistry.set(
    Equation,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "Equation") }
  )
  MappingRegistry.set(
    NodeTable,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "NodeTable") }
  )
  MappingRegistry.set(
    Paraphrase,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "Paraphrase") }
  )
  MappingRegistry.set(
    GAF,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "GAF") }
  )
  MappingRegistry.set(
    TermResult,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "termResult") }
  )
  MappingRegistry.set(
    FormulaComponent,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "FormulaComponent") }
  )
  MappingRegistry.set(
    ValidValueScales,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "ValidValueScales") }
  )
  MappingRegistry.set(
    RelationOption,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "RelationOption") }
  )
  MappingRegistry.set(
    LMapArgument,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "LMapArgument") }
  )
  MappingRegistry.set(
    UIAttributes,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "UIAttributes") }
  )
  MappingRegistry.set(
    ConceptMapDiff,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "ConceptMapDiff") }
  )
  MappingRegistry.set(
    WordSense,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "WordSense") }
  )
  MappingRegistry.set(
    PartitionData,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "PartitionData") }
  )
  MappingRegistry.set(
    PartitionEdit,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "PartitionEdit") }
  )
  MappingRegistry.set(
    WordConceptMap,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "WordConceptMap") }
  )
  MappingRegistry.set(
    DocumentSelection,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "documentSelection") }
  )
  MappingRegistry.set(
    ReactionParticipant,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "ReactionParticipant") }
  )
  MappingRegistry.set(
    DirtParaphrase,
    ::SOAP::SOAPStruct,
    ::SOAP::Mapping::Registry::TypedStructFactory,
    { :type => XSD::QName.new("urn:auraUserData", "DirtParaphrase") }
  )

  Methods = [
    [ XSD::QName.new("urn:auraUserData", "askQuestion"),
      "askQuestion",
      "askQuestion",
      [ ["in", "question", ["::SOAP::SOAPString"]],
        ["in", "forceWord", ["::SOAP::SOAPString"]],
        ["in", "pos", ["::SOAP::SOAPQName"]],
        ["in", "uofm", ["::SOAP::SOAPBoolean"]],
        ["retval", "conceptMap", ["QuestionConceptMap", "urn:auraUserData", "QuestionConceptMap"]],
        ["out", "errors", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "whyNot"),
      "whyNot",
      "whyNot",
      [ ["in", "concept", ["::SOAP::SOAPQName"]],
        ["retval", "viewpoint", ["Viewpoint", "urn:auraUserData", "Viewpoint"]],
        ["out", "setupMatched", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]],
        ["out", "setupNotMatched", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]],
        ["out", "conceptMatched", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]],
        ["out", "conceptNotMatched", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "pingServer"),
      "pingServer",
      "pingServer",
      [ ["in", "dummy", ["::SOAP::SOAPString"]],
        ["retval", "dummy", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "changeRelation"),
      "changeRelation",
      "changeRelation",
      [ ["in", "rootIndividual", ["::SOAP::SOAPQName"]],
        ["in", "edges", ["GAF[]", "urn:auraUserData", "GAF"]],
        ["in", "relation", ["::SOAP::SOAPQName"]],
        ["retval", "conceptMap", ["QuestionConceptMap", "urn:auraUserData", "QuestionConceptMap"]],
        ["out", "errors", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getNonVisibleClasses"),
      "getNonVisibleClasses",
      "getNonVisibleClasses",
      [ ["in", "dummy", ["::SOAP::SOAPString"]],
        ["retval", "classes", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "deleteSmeConcept"),
      "deleteSmeConcept",
      "deleteSmeConcept",
      [ ["in", "concept", ["::SOAP::SOAPQName"]],
        ["retval", "reviewList", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "stemString"),
      "stemString",
      "stemString",
      [ ["in", "inputString", ["::SOAP::SOAPString"]],
        ["retval", "outputString", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "checkpointSuccess"),
      "checkpointSuccess",
      "checkpointSuccess",
      [ ["in", "idCreated", ["::SOAP::SOAPInt"]],
        ["retval", "dummy", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "genericSearch"),
      "genericSearch",
      "genericSearch",
      [ ["in", "inputs", ["String[]", "http://www.w3.org/2001/XMLSchema", "string"]],
        ["retval", "termResultList", ["TermResult[]", "urn:auraUserData", "termResult"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "createCompound"),
      "createCompound",
      "createCompound",
      [ ["in", "compound", ["Formula", "urn:auraUserData", "Formula"]],
        ["in", "className", ["::SOAP::SOAPQName"]],
        ["retval", "compoundClass", ["::SOAP::SOAPQName"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getClassRelatedClasses"),
      "getClassRelatedClasses",
      "getClassRelatedClasses",
      [ ["in", "class", ["::SOAP::SOAPString"]],
        ["retval", "classes", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "answerCorrect"),
      "answerCorrect",
      "answerCorrect",
      [ ["in", "id", ["::SOAP::SOAPString"]],
        ["retval", "dummy", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "initialize"),
      "initialize",
      "initialize",
      [ ["in", "pingInterval", ["::SOAP::SOAPInt"]],
        ["in", "checkpointInterval", ["::SOAP::SOAPInt"]],
        ["retval", "idToRecover", ["::SOAP::SOAPInt"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getValidPropertyValues"),
      "getValidPropertyValues",
      "getValidPropertyValues",
      [ ["in", "individual", ["::SOAP::SOAPQName"]],
        ["retval", "relationsArray", ["ValidValueScales[]", "urn:auraUserData", "ValidValueScales"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "shakenFaultExporter"),
      "shakenFaultExporter",
      "shakenFaultExporter",
      [ ["in", "SOAPServerPart", ["nil", "urn:auraUserData", "dummy"]],
        ["retval", "concept", ["::SOAP::SOAPQName"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getDebugNames"),
      "getDebugNames",
      "getDebugNames",
      [ ["in", "dummy", ["::SOAP::SOAPString"]],
        ["retval", "viewpoints", ["Viewpoint[]", "urn:auraUserData", "Viewpoint"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getViewpointInfo"),
      "getViewpointInfo",
      "getViewpointInfo",
      [ ["in", "viewpoint", ["::SOAP::SOAPQName"]],
        ["retval", "viewpoint", ["Viewpoint", "urn:auraUserData", "Viewpoint"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getAsynchronousCallStatus"),
      "getAsynchronousCallStatus",
      "getAsynchronousCallStatus",
      [ ["in", "callName", ["::SOAP::SOAPQName"]],
        ["retval", "currentStage", ["::SOAP::SOAPInt"]],
        ["out", "maxStage", ["::SOAP::SOAPInt"]],
        ["out", "positionInStage", ["::SOAP::SOAPInt"]],
        ["out", "maxInStage", ["::SOAP::SOAPInt"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "drilldownExplanation"),
      "drilldownExplanation",
      "drilldownExplanation",
      [ ["in", "function", ["::SOAP::SOAPString"]],
        ["in", "arguments", ["String[]", "http://www.w3.org/2001/XMLSchema", "string"]],
        ["retval", "explanation", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getRelationOptions"),
      "getWordSenses",
      "getRelationOptions",
      [ ["in", "source", ["::SOAP::SOAPQName"]],
        ["in", "relation", ["::SOAP::SOAPQName"]],
        ["in", "target", ["::SOAP::SOAPQName"]],
        ["retval", "options", ["RelationOption[]", "urn:auraUserData", "RelationOption"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "callLMapFunction"),
      "callLMapFunction",
      "callLMapFunction",
      [ ["in", "rootIndividual", ["::SOAP::SOAPQName"]],
        ["in", "action", ["::SOAP::SOAPQName"]],
        ["in", "arguments", ["LMapArgument[]", "urn:auraUserData", "LMapArgument"]],
        ["in", "uiAttributes", ["UIAttributes[]", "urn:auraUserData", "UIAttributes"]],
        ["retval", "conceptMap", ["ConceptMap", "urn:auraUserData", "ConceptMap"]],
        ["out", "conceptList", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]],
        ["out", "cmapList", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]],
        ["out", "conceptEditSummary", ["ConceptMapEditSummary", "urn:auraUserData", "ConceptMapEditSummary"]],
        ["out", "dummy", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getWordSenses"),
      "getWordSenses",
      "getWordSenses",
      [ ["in", "instance", ["::SOAP::SOAPQName"]],
        ["retval", "senses", ["WordSense[]", "urn:auraUserData", "WordSense"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "answerQuestion"),
      "answerQuestion",
      "answerQuestion",
      [ ["in", "questionID", ["::SOAP::SOAPString"]],
        ["retval", "answer", ["::SOAP::SOAPString"]],
        ["out", "canContinue", ["::SOAP::SOAPBoolean"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "initializeComplete"),
      "initializeComplete",
      "initializeComplete",
      [ ["in", "idRecovered", ["::SOAP::SOAPInt"]],
        ["in", "isSuccess", ["::SOAP::SOAPBoolean"]],
        ["retval", "idToRecover", ["::SOAP::SOAPInt"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "changeWordSense"),
      "changeWordSense",
      "changeWordSense",
      [ ["in", "instance", ["::SOAP::SOAPQName"]],
        ["in", "sense", ["::SOAP::SOAPQName"]],
        ["retval", "conceptMap", ["QuestionConceptMap", "urn:auraUserData", "QuestionConceptMap"]],
        ["out", "errors", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getValidRelations"),
      "getValidRelations",
      "getValidRelations",
      [ ["in", "source", ["::SOAP::SOAPQName"]],
        ["in", "target", ["::SOAP::SOAPQName"]],
        ["retval", "SOAPServerPart002", ["nil", "urn:auraUserData", "relationsArray"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "findPartitionsForClass"),
      "findPartitionsForClass",
      "findPartitionsForClass",
      [ ["in", "class", ["::SOAP::SOAPQName"]],
        ["retval", "partitions", ["PartitionData[]", "urn:auraUserData", "PartitionData"]],
        ["out", "edits", ["PartitionEdit[]", "urn:auraUserData", "PartitionEdit"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "driCreateSelection"),
      "driCreateSelection",
      "driCreateSelection",
      [ ["in", "selectionType", ["::SOAP::SOAPQName"]],
        ["in", "selectionPath", ["::SOAP::SOAPString"]],
        ["in", "selectionURI", ["::SOAP::SOAPAnyURI"]],
        ["in", "selectionRangeStart", ["::SOAP::SOAPInt"]],
        ["in", "selectionRangeEnd", ["::SOAP::SOAPInt"]],
        ["in", "selectionName", ["::SOAP::SOAPQName"]],
        ["in", "selectionSummary", ["::SOAP::SOAPString"]],
        ["retval", "driCreateSelectionDisposition", ["::SOAP::SOAPQName"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "blockDirtParaphrase"),
      "blockDirtParaphrase",
      "blockDirtParaphrase",
      [ ["in", "dirtParaphrase", ["::SOAP::SOAPString"]],
        ["retval", "dummy", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getDebugInfo"),
      "getDebugInfo",
      "getDebugInfo",
      [ ["in", "dummy", ["::SOAP::SOAPString"]],
        ["retval", "viewpoints", ["Viewpoint[]", "urn:auraUserData", "Viewpoint"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "continueAnswerQuestion"),
      "continueAnswerQuestion",
      "continueAnswerQuestion",
      [ ["in", "dummy", ["::SOAP::SOAPString"]],
        ["retval", "answer", ["::SOAP::SOAPString"]],
        ["out", "canContinue", ["::SOAP::SOAPBoolean"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "abortAsynchronousCall"),
      "abortAsynchronousCall",
      "abortAsynchronousCall",
      [ ["in", "callName", ["::SOAP::SOAPQName"]],
        ["retval", "dummy", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "shutdown"),
      "shutdown",
      "shutdown",
      [ ["in", "errorStatus", ["::SOAP::SOAPInt"]],
        ["retval", "dummy", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getSmeDefinedConcepts"),
      "getSmeDefinedConcepts",
      "getSmeDefinedConcepts",
      [ ["in", "root", ["::SOAP::SOAPQName"]],
        ["retval", "clibConcepts", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]],
        ["out", "newConcepts", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getExampleCPLSentences"),
      "getExampleCPLSentences",
      "getExampleCPLSentences",
      [ ["in", "dummy", ["::SOAP::SOAPString"]],
        ["retval", "sentences", ["String[]", "http://www.w3.org/2001/XMLSchema", "string"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "createNewClass"),
      "createNewClass",
      "createNewClass",
      [ ["in", "concept", ["::SOAP::SOAPQName"]],
        ["in", "conceptList", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]],
        ["retval", "concept", ["::SOAP::SOAPQName"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getClassSynonyms"),
      "getClassSynonyms",
      "getClassSynonyms",
      [ ["in", "concept", ["::SOAP::SOAPQName"]],
        ["retval", "vocabulary", ["WordConceptMap[]", "urn:auraUserData", "WordConceptMap"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "assertAsEqual"),
      "assertAsEqual",
      "assertAsEqual",
      [ ["in", "instance1", ["::SOAP::SOAPQName"]],
        ["in", "instance2", ["::SOAP::SOAPQName"]],
        ["retval", "conceptMap", ["QuestionConceptMap", "urn:auraUserData", "QuestionConceptMap"]],
        ["out", "errors", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "startQASession"),
      "startQASession",
      "startQASession",
      [ ["in", "dummy", ["::SOAP::SOAPString"]],
        ["retval", "dummy", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getMostGeneralInstanceClasses"),
      "getMostGeneralInstanceClasses",
      "getMostGeneralInstanceClasses",
      [ ["in", "individual", ["::SOAP::SOAPQName"]],
        ["in", "classBeingEdited", ["::SOAP::SOAPQName"]],
        ["retval", "classes", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "auraFaultExporter"),
      "auraFaultExporter",
      "auraFaultExporter",
      [ ["in", "SOAPServerPart003", ["nil", "urn:auraUserData", "dummy2"]],
        ["retval", "concept", ["::SOAP::SOAPQName"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getVocabulary"),
      "getVocabulary",
      "getVocabulary",
      [ ["in", "pattern", ["::SOAP::SOAPString"]],
        ["retval", "vocabulary", ["WordConceptMap[]", "urn:auraUserData", "WordConceptMap"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "driGetSelection"),
      "driGetSelection",
      "driGetSelection",
      [ ["in", "selectionURI", ["::SOAP::SOAPAnyURI"]],
        ["in", "selectionPath", ["::SOAP::SOAPString"]],
        ["in", "selectionRangeStart", ["::SOAP::SOAPInt"]],
        ["in", "selectionRangeEnd", ["::SOAP::SOAPInt"]],
        ["retval", "driGetSelectionDisposition", ["DocumentSelection[]", "urn:auraUserData", "documentSelection"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "answerQuestionIpad"),
      "answerQuestionIpad",
      "answerQuestionIpad",
      [ ["in", "questionID", ["::SOAP::SOAPString"]],
        ["retval", "answer", ["::SOAP::SOAPString"]],
        ["out", "canContinue", ["::SOAP::SOAPBoolean"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getAllPartitions"),
      "getAllPartitions",
      "getAllPartitions",
      [ ["in", "classes", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]],
        ["retval", "partitions", ["PartitionData[]", "urn:auraUserData", "PartitionData"]],
        ["out", "edits", ["PartitionEdit[]", "urn:auraUserData", "PartitionEdit"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "createChemicalReaction"),
      "createChemicalReaction",
      "createChemicalReaction",
      [ ["in", "reaction", ["Reaction", "urn:auraUserData", "Reaction"]],
        ["in", "className", ["::SOAP::SOAPQName"]],
        ["in", "balance", ["::SOAP::SOAPBoolean"]],
        ["retval", "reactionClass", ["::SOAP::SOAPQName"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "commitEdits"),
      "commitEdits",
      "commitEdits",
      [ ["in", "dummy", ["::SOAP::SOAPString"]],
        ["retval", "dummy", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "driRemoveSelection"),
      "driRemoveSelection",
      "driRemoveSelection",
      [ ["in", "selectionURI", ["::SOAP::SOAPAnyURI"]],
        ["in", "selectionPath", ["::SOAP::SOAPString"]],
        ["in", "selectionRangeStart", ["::SOAP::SOAPInt"]],
        ["in", "selectionRangeEnd", ["::SOAP::SOAPInt"]],
        ["retval", "driRemoveSelectionDisposition", ["DocumentSelection[]", "urn:auraUserData", "documentSelection"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getClassDocumentation"),
      "getClassDocumentation",
      "getClassDocumentation",
      [ ["in", "concept", ["::SOAP::SOAPQName"]],
        ["in", "type", ["::SOAP::SOAPQName"]],
        ["retval", "documentation", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "prepareIndividual"),
      "prepareIndividual",
      "prepareIndividual",
      [ ["in", "concept", ["::SOAP::SOAPQName"]],
        ["retval", "concept", ["::SOAP::SOAPQName"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "exportOWL"),
      "exportOWL",
      "exportOWL",
      [ ["in", "destination", ["::SOAP::SOAPString"]],
        ["retval", "dummy", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "unBlockDirtParaphrase"),
      "unBlockDirtParaphrase",
      "unBlockDirtParaphrase",
      [ ["in", "dirtParaphrase", ["::SOAP::SOAPString"]],
        ["retval", "dummy", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getCheckpointedGraph"),
      "getCheckpointedGraph",
      "getCheckpointedGraph",
      [ ["in", "rootIndividual", ["::SOAP::SOAPQName"]],
        ["retval", "conceptMap", ["ConceptMap", "urn:auraUserData", "ConceptMap"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "getSmeConceptDependencies"),
      "getSmeConceptDependencies",
      "getSmeConceptDependencies",
      [ ["in", "concept", ["::SOAP::SOAPQName"]],
        ["retval", "subclasses", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]],
        ["out", "referrers", ["String[]", "http://www.w3.org/2001/XMLSchema", "QName"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "endQASession"),
      "endQASession",
      "endQASession",
      [ ["in", "dummy", ["::SOAP::SOAPString"]],
        ["retval", "dummy", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "lastDirtParaphrasesUsed"),
      "lastDirtParaphrasesUsed",
      "lastDirtParaphrasesUsed",
      [ ["in", "dummy", ["::SOAP::SOAPString"]],
        ["retval", "listOfDirtParaphrasesUsed", ["DirtParaphrase[]", "urn:auraUserData", "DirtParaphrase"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "resetQASession"),
      "resetQASession",
      "resetQASession",
      [ ["in", "dummy", ["::SOAP::SOAPString"]],
        ["retval", "dummy", ["::SOAP::SOAPString"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ],
    [ XSD::QName.new("urn:auraUserData", "extractConceptsFromText"),
      "extractConceptsFromText",
      "extractConceptsFromText",
      [ ["in", "textbooktext", ["::SOAP::SOAPString"]],
        ["retval", "vocabulary", ["WordConceptMap[]", "urn:auraUserData", "WordConceptMap"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = MappingRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

