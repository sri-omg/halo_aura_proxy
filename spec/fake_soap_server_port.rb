class FakeSoapServerPort
  def startQASession(dummy)
    @started = true
  end

  def resetQASession(dummy)
    asked_questions.clear
  end

  def askQuestion(question, dummy1, dummy2, dummy3)
    asked_questions << question
    ask_response
  end

  def answerQuestionIpad(dummy)
    [answer_response, true]
  end

  def getQuestions(text, section)
    suggested_questions_requests << {:section => section, :text => text}
    ["What is the diameter of a head?", "What is your favorite color?", "Where is the beef?"]
  end

  def getStructuredQuestions(text, section)
    get_structured_questions_requests << {:concept => section}

    <<-xml
<Questions>
  <Question QuestionType="HOW_MANY">A Eukaryotic cell has how many chromosomes?</Question>
  <Question QuestionType="FIND_VALUE">What are the objects of a Prometaphase?</Question>
  <Question QuestionType="IDENTIFY">A fusion produces a zygote. What is the fusion?</Question>
  <Question QuestionType="DEFINITION">What is a eukaryotic-cell?</Question>
  <Question QuestionType="RELATION">What is the relation between Move and Prophase-I?</Question>
  <Question QuestionType="SIMM_DIFF">Nucleus and lysosome are part of eukaryotic-cell. What are the similarities and differences between Lysosome and Nucleus?</Question>
  <Question QuestionType="YES_NO">Is it true that gtp is used in translation initiation?</Question>
</Questions>
    xml
  end

  def started?
    @started
  end

  def asked_questions
    @asked_questions ||= []
  end

  def suggested_questions_requests
    @suggested_questions_requests ||= []
  end

  def get_structured_questions_requests
    @get_structured_questions_requests ||= []
  end

  attr_accessor :ask_response
  attr_accessor :answer_response
end
