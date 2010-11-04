#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = SOAPServerPort.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   askQuestion(question, forceWord, pos, uofm)
#
# ARGS
#   question        C_String - {http://www.w3.org/2001/XMLSchema}string
#   forceWord       C_String - {http://www.w3.org/2001/XMLSchema}string
#   pos             QName - {http://www.w3.org/2001/XMLSchema}QName
#   uofm            Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   conceptMap      QuestionConceptMap - {urn:auraUserData}QuestionConceptMap
#   errors          C_String - {http://www.w3.org/2001/XMLSchema}string
#
question = forceWord = pos = uofm = nil
puts obj.askQuestion(question, forceWord, pos, uofm)

# SYNOPSIS
#   whyNot(concept)
#
# ARGS
#   concept         QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   viewpoint       Viewpoint - {urn:auraUserData}Viewpoint
#   setupMatched    QNameArray - {urn:auraUserData}QNameArray
#   setupNotMatched QNameArray - {urn:auraUserData}QNameArray
#   conceptMatched  QNameArray - {urn:auraUserData}QNameArray
#   conceptNotMatched QNameArray - {urn:auraUserData}QNameArray
#
concept = nil
puts obj.whyNot(concept)

# SYNOPSIS
#   pingServer(dummy)
#
# ARGS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
dummy = nil
puts obj.pingServer(dummy)

# SYNOPSIS
#   changeRelation(rootIndividual, edges, relation)
#
# ARGS
#   rootIndividual  QName - {http://www.w3.org/2001/XMLSchema}QName
#   edges           ArrayOfGAFs - {urn:auraUserData}ArrayOfGAFs
#   relation        QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   conceptMap      QuestionConceptMap - {urn:auraUserData}QuestionConceptMap
#   errors          C_String - {http://www.w3.org/2001/XMLSchema}string
#
rootIndividual = edges = relation = nil
puts obj.changeRelation(rootIndividual, edges, relation)

# SYNOPSIS
#   getNonVisibleClasses(dummy)
#
# ARGS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   classes         QNameArray - {urn:auraUserData}QNameArray
#
dummy = nil
puts obj.getNonVisibleClasses(dummy)

# SYNOPSIS
#   deleteSmeConcept(concept)
#
# ARGS
#   concept         QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   reviewList      QNameArray - {urn:auraUserData}QNameArray
#
concept = nil
puts obj.deleteSmeConcept(concept)

# SYNOPSIS
#   stemString(inputString)
#
# ARGS
#   inputString     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   outputString    C_String - {http://www.w3.org/2001/XMLSchema}string
#
inputString = nil
puts obj.stemString(inputString)

# SYNOPSIS
#   checkpointSuccess(idCreated)
#
# ARGS
#   idCreated       Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
idCreated = nil
puts obj.checkpointSuccess(idCreated)

# SYNOPSIS
#   genericSearch(inputs)
#
# ARGS
#   inputs          StringArray - {urn:auraUserData}StringArray
#
# RETURNS
#   termResultList  ArrayOfTermResult - {urn:auraUserData}ArrayOfTermResult
#
inputs = nil
puts obj.genericSearch(inputs)

# SYNOPSIS
#   createCompound(compound, className)
#
# ARGS
#   compound        Formula - {urn:auraUserData}Formula
#   className       QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   compoundClass   QName - {http://www.w3.org/2001/XMLSchema}QName
#
compound = className = nil
puts obj.createCompound(compound, className)

# SYNOPSIS
#   getClassRelatedClasses(v_class)
#
# ARGS
#   v_class         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   classes         QNameArray - {urn:auraUserData}QNameArray
#
v_class = nil
puts obj.getClassRelatedClasses(v_class)

# SYNOPSIS
#   answerCorrect(id)
#
# ARGS
#   id              C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
id = nil
puts obj.answerCorrect(id)

# SYNOPSIS
#   initialize(pingInterval, checkpointInterval)
#
# ARGS
#   pingInterval    Int - {http://www.w3.org/2001/XMLSchema}int
#   checkpointInterval Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   idToRecover     Int - {http://www.w3.org/2001/XMLSchema}int
#
pingInterval = checkpointInterval = nil
puts obj.initialize(pingInterval, checkpointInterval)

# SYNOPSIS
#   getValidPropertyValues(individual)
#
# ARGS
#   individual      QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   relationsArray  ValidValuesArray - {urn:auraUserData}ValidValuesArray
#
individual = nil
puts obj.getValidPropertyValues(individual)

# SYNOPSIS
#   shakenFaultExporter(sOAPServerPart)
#
# ARGS
#   sOAPServerPart  SOAPServerType - {urn:auraUserData}SOAPServerType
#
# RETURNS
#   concept         QName - {http://www.w3.org/2001/XMLSchema}QName
#
sOAPServerPart = nil
puts obj.shakenFaultExporter(sOAPServerPart)

# SYNOPSIS
#   getDebugNames(dummy)
#
# ARGS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   viewpoints      ArrayOfViewpoints - {urn:auraUserData}ArrayOfViewpoints
#
dummy = nil
puts obj.getDebugNames(dummy)

# SYNOPSIS
#   getViewpointInfo(viewpoint)
#
# ARGS
#   viewpoint       QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   viewpoint       Viewpoint - {urn:auraUserData}Viewpoint
#
viewpoint = nil
puts obj.getViewpointInfo(viewpoint)

# SYNOPSIS
#   getAsynchronousCallStatus(callName)
#
# ARGS
#   callName        QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   currentStage    Int - {http://www.w3.org/2001/XMLSchema}int
#   maxStage        Int - {http://www.w3.org/2001/XMLSchema}int
#   positionInStage Int - {http://www.w3.org/2001/XMLSchema}int
#   maxInStage      Int - {http://www.w3.org/2001/XMLSchema}int
#
callName = nil
puts obj.getAsynchronousCallStatus(callName)

# SYNOPSIS
#   getClassesUsedInLastQuestion(dummy)
#
# ARGS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   classes         QNameArray - {urn:auraUserData}QNameArray
#
dummy = nil
puts obj.getClassesUsedInLastQuestion(dummy)

# SYNOPSIS
#   drilldownExplanation(function, arguments)
#
# ARGS
#   function        C_String - {http://www.w3.org/2001/XMLSchema}string
#   arguments       StringArray - {urn:auraUserData}StringArray
#
# RETURNS
#   explanation     C_String - {http://www.w3.org/2001/XMLSchema}string
#
function = arguments = nil
puts obj.drilldownExplanation(function, arguments)

# SYNOPSIS
#   getRelationOptions(source, relation, target)
#
# ARGS
#   source          QName - {http://www.w3.org/2001/XMLSchema}QName
#   relation        QName - {http://www.w3.org/2001/XMLSchema}QName
#   target          QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   options         ArrayOfRelationOptions - {urn:auraUserData}ArrayOfRelationOptions
#
source = relation = target = nil
puts obj.getRelationOptions(source, relation, target)

# SYNOPSIS
#   callLMapFunction(rootIndividual, action, arguments, uiAttributes)
#
# ARGS
#   rootIndividual  QName - {http://www.w3.org/2001/XMLSchema}QName
#   action          QName - {http://www.w3.org/2001/XMLSchema}QName
#   arguments       LMapArgumentTable - {urn:auraUserData}LMapArgumentTable
#   uiAttributes    UIAttributeArray - {urn:auraUserData}UIAttributeArray
#
# RETURNS
#   conceptMap      ConceptMap - {urn:auraUserData}ConceptMap
#   conceptList     QNameArray - {urn:auraUserData}QNameArray
#   cmapList        QNameArray - {urn:auraUserData}QNameArray
#   conceptEditSummary ConceptMapEditSummary - {urn:auraUserData}ConceptMapEditSummary
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
rootIndividual = action = arguments = uiAttributes = nil
puts obj.callLMapFunction(rootIndividual, action, arguments, uiAttributes)

# SYNOPSIS
#   getQuestions(inputText, section)
#
# ARGS
#   inputText       C_String - {http://www.w3.org/2001/XMLSchema}string
#   section         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   questions       StringArray - {urn:auraUserData}StringArray
#
inputText = section = nil
puts obj.getQuestions(inputText, section)

# SYNOPSIS
#   getWordSenses(instance)
#
# ARGS
#   instance        QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   senses          ArrayOfWordSenses - {urn:auraUserData}ArrayOfWordSenses
#
instance = nil
puts obj.getWordSenses(instance)

# SYNOPSIS
#   answerQuestion(questionID)
#
# ARGS
#   questionID      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   answer          C_String - {http://www.w3.org/2001/XMLSchema}string
#   canContinue     Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
questionID = nil
puts obj.answerQuestion(questionID)

# SYNOPSIS
#   initializeComplete(idRecovered, isSuccess)
#
# ARGS
#   idRecovered     Int - {http://www.w3.org/2001/XMLSchema}int
#   isSuccess       Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   idToRecover     Int - {http://www.w3.org/2001/XMLSchema}int
#
idRecovered = isSuccess = nil
puts obj.initializeComplete(idRecovered, isSuccess)

# SYNOPSIS
#   changeWordSense(instance, sense)
#
# ARGS
#   instance        QName - {http://www.w3.org/2001/XMLSchema}QName
#   sense           QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   conceptMap      QuestionConceptMap - {urn:auraUserData}QuestionConceptMap
#   errors          C_String - {http://www.w3.org/2001/XMLSchema}string
#
instance = sense = nil
puts obj.changeWordSense(instance, sense)

# SYNOPSIS
#   getValidRelations(source, target)
#
# ARGS
#   source          QName - {http://www.w3.org/2001/XMLSchema}QName
#   target          QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   sOAPServerPart002 SOAPServerType002 - {urn:auraUserData}SOAPServerType002
#
source = target = nil
puts obj.getValidRelations(source, target)

# SYNOPSIS
#   getStructuredQuestions(inputText, section)
#
# ARGS
#   inputText       C_String - {http://www.w3.org/2001/XMLSchema}string
#   section         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   structuredQuestions C_String - {http://www.w3.org/2001/XMLSchema}string
#
inputText = section = nil
puts obj.getStructuredQuestions(inputText, section)

# SYNOPSIS
#   driCreateSelection(selectionType, selectionPath, selectionURI, selectionRangeStart, selectionRangeEnd, selectionName, selectionSummary)
#
# ARGS
#   selectionType   QName - {http://www.w3.org/2001/XMLSchema}QName
#   selectionPath   C_String - {http://www.w3.org/2001/XMLSchema}string
#   selectionURI    AnyURI - {http://www.w3.org/2001/XMLSchema}anyURI
#   selectionRangeStart Int - {http://www.w3.org/2001/XMLSchema}int
#   selectionRangeEnd Int - {http://www.w3.org/2001/XMLSchema}int
#   selectionName   QName - {http://www.w3.org/2001/XMLSchema}QName
#   selectionSummary C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   driCreateSelectionDisposition QName - {http://www.w3.org/2001/XMLSchema}QName
#
selectionType = selectionPath = selectionURI = selectionRangeStart = selectionRangeEnd = selectionName = selectionSummary = nil
puts obj.driCreateSelection(selectionType, selectionPath, selectionURI, selectionRangeStart, selectionRangeEnd, selectionName, selectionSummary)

# SYNOPSIS
#   findPartitionsForClass(v_class)
#
# ARGS
#   v_class         QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   partitions      PartitionsArray - {urn:auraUserData}PartitionsArray
#   edits           PartitionEditsArray - {urn:auraUserData}PartitionEditsArray
#
v_class = nil
puts obj.findPartitionsForClass(v_class)

# SYNOPSIS
#   blockDirtParaphrase(dirtParaphrase)
#
# ARGS
#   dirtParaphrase  C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
dirtParaphrase = nil
puts obj.blockDirtParaphrase(dirtParaphrase)

# SYNOPSIS
#   getDebugInfo(dummy)
#
# ARGS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   viewpoints      ArrayOfViewpoints - {urn:auraUserData}ArrayOfViewpoints
#
dummy = nil
puts obj.getDebugInfo(dummy)

# SYNOPSIS
#   continueAnswerQuestion(dummy)
#
# ARGS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   answer          C_String - {http://www.w3.org/2001/XMLSchema}string
#   canContinue     Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
dummy = nil
puts obj.continueAnswerQuestion(dummy)

# SYNOPSIS
#   abortAsynchronousCall(callName)
#
# ARGS
#   callName        QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
callName = nil
puts obj.abortAsynchronousCall(callName)

# SYNOPSIS
#   shutdown(errorStatus)
#
# ARGS
#   errorStatus     Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
errorStatus = nil
puts obj.shutdown(errorStatus)

# SYNOPSIS
#   getSmeDefinedConcepts(root)
#
# ARGS
#   root            QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   clibConcepts    QNameArray - {urn:auraUserData}QNameArray
#   newConcepts     QNameArray - {urn:auraUserData}QNameArray
#
root = nil
puts obj.getSmeDefinedConcepts(root)

# SYNOPSIS
#   getExampleCPLSentences(dummy)
#
# ARGS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   sentences       StringArray - {urn:auraUserData}StringArray
#
dummy = nil
puts obj.getExampleCPLSentences(dummy)

# SYNOPSIS
#   createNewClass(concept, conceptList)
#
# ARGS
#   concept         QName - {http://www.w3.org/2001/XMLSchema}QName
#   conceptList     QNameArray - {urn:auraUserData}QNameArray
#
# RETURNS
#   concept         QName - {http://www.w3.org/2001/XMLSchema}QName
#
concept = conceptList = nil
puts obj.createNewClass(concept, conceptList)

# SYNOPSIS
#   getClassSynonyms(concept)
#
# ARGS
#   concept         QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   vocabulary      VocabularyArray - {urn:auraUserData}VocabularyArray
#
concept = nil
puts obj.getClassSynonyms(concept)

# SYNOPSIS
#   assertAsEqual(instance1, instance2)
#
# ARGS
#   instance1       QName - {http://www.w3.org/2001/XMLSchema}QName
#   instance2       QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   conceptMap      QuestionConceptMap - {urn:auraUserData}QuestionConceptMap
#   errors          C_String - {http://www.w3.org/2001/XMLSchema}string
#
instance1 = instance2 = nil
puts obj.assertAsEqual(instance1, instance2)

# SYNOPSIS
#   startQASession(dummy)
#
# ARGS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
dummy = nil
puts obj.startQASession(dummy)

# SYNOPSIS
#   getMostGeneralInstanceClasses(individual, classBeingEdited)
#
# ARGS
#   individual      QName - {http://www.w3.org/2001/XMLSchema}QName
#   classBeingEdited QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   classes         QNameArray - {urn:auraUserData}QNameArray
#
individual = classBeingEdited = nil
puts obj.getMostGeneralInstanceClasses(individual, classBeingEdited)

# SYNOPSIS
#   auraFaultExporter(sOAPServerPart003)
#
# ARGS
#   sOAPServerPart003 SOAPServerType003 - {urn:auraUserData}SOAPServerType003
#
# RETURNS
#   concept         QName - {http://www.w3.org/2001/XMLSchema}QName
#
sOAPServerPart003 = nil
puts obj.auraFaultExporter(sOAPServerPart003)

# SYNOPSIS
#   getVocabulary(pattern)
#
# ARGS
#   pattern         C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   vocabulary      VocabularyArray - {urn:auraUserData}VocabularyArray
#
pattern = nil
puts obj.getVocabulary(pattern)

# SYNOPSIS
#   driGetSelection(selectionURI, selectionPath, selectionRangeStart, selectionRangeEnd)
#
# ARGS
#   selectionURI    AnyURI - {http://www.w3.org/2001/XMLSchema}anyURI
#   selectionPath   C_String - {http://www.w3.org/2001/XMLSchema}string
#   selectionRangeStart Int - {http://www.w3.org/2001/XMLSchema}int
#   selectionRangeEnd Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   driGetSelectionDisposition DocumentSelectionArray - {urn:auraUserData}DocumentSelectionArray
#
selectionURI = selectionPath = selectionRangeStart = selectionRangeEnd = nil
puts obj.driGetSelection(selectionURI, selectionPath, selectionRangeStart, selectionRangeEnd)

# SYNOPSIS
#   answerQuestionIpad(questionID)
#
# ARGS
#   questionID      C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   answer          C_String - {http://www.w3.org/2001/XMLSchema}string
#   canContinue     Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
questionID = nil
puts obj.answerQuestionIpad(questionID)

# SYNOPSIS
#   getAllPartitions(classes)
#
# ARGS
#   classes         QNameArray - {urn:auraUserData}QNameArray
#
# RETURNS
#   partitions      PartitionsArray - {urn:auraUserData}PartitionsArray
#   edits           PartitionEditsArray - {urn:auraUserData}PartitionEditsArray
#
classes = nil
puts obj.getAllPartitions(classes)

# SYNOPSIS
#   createChemicalReaction(reaction, className, balance)
#
# ARGS
#   reaction        Reaction - {urn:auraUserData}Reaction
#   className       QName - {http://www.w3.org/2001/XMLSchema}QName
#   balance         Boolean - {http://www.w3.org/2001/XMLSchema}boolean
#
# RETURNS
#   reactionClass   QName - {http://www.w3.org/2001/XMLSchema}QName
#
reaction = className = balance = nil
puts obj.createChemicalReaction(reaction, className, balance)

# SYNOPSIS
#   commitEdits(dummy)
#
# ARGS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
dummy = nil
puts obj.commitEdits(dummy)

# SYNOPSIS
#   driRemoveSelection(selectionURI, selectionPath, selectionRangeStart, selectionRangeEnd)
#
# ARGS
#   selectionURI    AnyURI - {http://www.w3.org/2001/XMLSchema}anyURI
#   selectionPath   C_String - {http://www.w3.org/2001/XMLSchema}string
#   selectionRangeStart Int - {http://www.w3.org/2001/XMLSchema}int
#   selectionRangeEnd Int - {http://www.w3.org/2001/XMLSchema}int
#
# RETURNS
#   driRemoveSelectionDisposition DocumentSelectionArray - {urn:auraUserData}DocumentSelectionArray
#
selectionURI = selectionPath = selectionRangeStart = selectionRangeEnd = nil
puts obj.driRemoveSelection(selectionURI, selectionPath, selectionRangeStart, selectionRangeEnd)

# SYNOPSIS
#   getClassDocumentation(concept, type)
#
# ARGS
#   concept         QName - {http://www.w3.org/2001/XMLSchema}QName
#   type            QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   documentation   C_String - {http://www.w3.org/2001/XMLSchema}string
#
concept = type = nil
puts obj.getClassDocumentation(concept, type)

# SYNOPSIS
#   prepareIndividual(concept)
#
# ARGS
#   concept         QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   concept         QName - {http://www.w3.org/2001/XMLSchema}QName
#
concept = nil
puts obj.prepareIndividual(concept)

# SYNOPSIS
#   exportOWL(destination)
#
# ARGS
#   destination     C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
destination = nil
puts obj.exportOWL(destination)

# SYNOPSIS
#   unBlockDirtParaphrase(dirtParaphrase)
#
# ARGS
#   dirtParaphrase  C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
dirtParaphrase = nil
puts obj.unBlockDirtParaphrase(dirtParaphrase)

# SYNOPSIS
#   getCheckpointedGraph(rootIndividual)
#
# ARGS
#   rootIndividual  QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   conceptMap      ConceptMap - {urn:auraUserData}ConceptMap
#
rootIndividual = nil
puts obj.getCheckpointedGraph(rootIndividual)

# SYNOPSIS
#   getSmeConceptDependencies(concept)
#
# ARGS
#   concept         QName - {http://www.w3.org/2001/XMLSchema}QName
#
# RETURNS
#   subclasses      QNameArray - {urn:auraUserData}QNameArray
#   referrers       QNameArray - {urn:auraUserData}QNameArray
#
concept = nil
puts obj.getSmeConceptDependencies(concept)

# SYNOPSIS
#   endQASession(dummy)
#
# ARGS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
dummy = nil
puts obj.endQASession(dummy)

# SYNOPSIS
#   lastDirtParaphrasesUsed(dummy)
#
# ARGS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   listOfDirtParaphrasesUsed ArrayOfDirtParaphrases - {urn:auraUserData}ArrayOfDirtParaphrases
#
dummy = nil
puts obj.lastDirtParaphrasesUsed(dummy)

# SYNOPSIS
#   resetQASession(dummy)
#
# ARGS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   dummy           C_String - {http://www.w3.org/2001/XMLSchema}string
#
dummy = nil
puts obj.resetQASession(dummy)

# SYNOPSIS
#   extractConceptsFromText(textbooktext)
#
# ARGS
#   textbooktext    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   vocabulary      VocabularyArray - {urn:auraUserData}VocabularyArray
#
textbooktext = nil
puts obj.extractConceptsFromText(textbooktext)


