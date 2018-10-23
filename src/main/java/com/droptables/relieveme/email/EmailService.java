package com.droptables.relieveme.email;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailService {

    private static final String DEVELOPER_EMAIL = "relievemedeveloperemail@gmail.com";
    private final JavaMailSender emailSender;

    @Autowired
    public EmailService(JavaMailSender emailSender) {
        this.emailSender = emailSender;
    }

    /**
     * Send feedback email to the user and to the developers
     * @param userEmail non-null user email
     * @param category non-null category of the email to append to the subject
     * @param subject non-null user-inputted subject
     * @param body non-null user-inputted body
     */
    public void sendFeedbackEmail(String userEmail, String category, String subject, String body) {
        sendFeedbackEmailToUser(userEmail, category, subject, body);
        sendFeedbackEmailToDevelopers(userEmail, category, subject, body);
    }

    /**
     * Send a feedback email to the user.
     * @param userEmail non-null user email
     * @param category non-null category of the email to append to the subject
     * @param subject non-null user-inputted subject
     * @param body non-null user-inputted body
     */
    private void sendFeedbackEmailToUser(String userEmail, String category, String subject, String body) {
        FeedbackEmail feedbackEmail = new FeedbackEmail(DEVELOPER_EMAIL, userEmail, category, subject, body);
        emailSender.send(feedbackEmail);
    }

    /**
     * Send a receipt email to the developers.
     * @param userEmail
     * @param category
     * @param subject
     * @param body
     */
    private void sendFeedbackEmailToDevelopers(String userEmail, String category, String subject, String body) {
        FeedbackEmail feedbackEmail = new FeedbackEmail(userEmail, DEVELOPER_EMAIL, category, subject, body);
        emailSender.send(feedbackEmail);
    }
}
