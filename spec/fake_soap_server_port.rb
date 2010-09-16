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

  def answerQuestion(dummy)
    [answer_response, true]
  end

  def started?
    @started
  end

  def asked_questions
    @asked_questions ||= []
  end

  attr_accessor :ask_response
  attr_accessor :answer_response
end
