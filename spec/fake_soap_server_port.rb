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

  def started?
    @started
  end

  def asked_questions
    @asked_questions ||= []
  end

  def suggested_questions_requests
    @suggested_questions_requests ||= []
  end

  attr_accessor :ask_response
  attr_accessor :answer_response
end
