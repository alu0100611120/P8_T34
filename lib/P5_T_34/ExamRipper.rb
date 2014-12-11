# Encoding: UTF-8
# coding: utf-8
require "P5_T_34/version"


module P5_T_34
    # ...
    class ExamRipper 
        attr_reader :finalExam
        
        def initialize()
            @finalExam = Exam.new()
            @questionTmp = nil
        end
        
        def title (titleText)
            @finalExam.title = titleText
        end
        
        def question (questionText, trueFalseQ=false)
            if (trueFalseQ) 
                @questionTmp = QuestionVF.new(questionText)
            else
                @questionTmp = Question.new(questionText)
            end
            @finalExam.push(@questionTmp)
        end
       
        def right (answerText)
            raise RuntimeError, "Falta iniciar una pregunta." unless (@questionTmp != nil)
            
            @questionTmp.correct = answerText
           
        end
       
        def wrong (answerText)
           
        end
       
        def run
            
        end
    end
end