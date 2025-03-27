package org.example.services;

import org.example.models.Question;
import org.example.repositories.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChatbotService {

    @Autowired
    private QuestionRepository questionRepository;

    /**
     * Trouve une réponse à une question posée par un client.
     */
    public String getResponse(String questionText) {
        List<Question> questions = questionRepository.findByQuestiontextIgnoreCase(questionText);

        // Vérifier si la liste contient au moins une réponse
        if (!questions.isEmpty()) {
            return questions.get(0).getAnswertext();  // Prendre la première réponse
        }

        return "Désolé, je ne connais pas la réponse à cette question.";
    }
}
