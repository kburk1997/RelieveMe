package com.droptables.relieveme.email;

import org.springframework.mail.SimpleMailMessage;

import java.util.Objects;

public class FeedbackEmail extends SimpleMailMessage {

    /**
     * Email for Feedback/Other categories
     * @param from non-null email of the sender
     * @param to non-null email of the recipient
     * @param category non-null category of the email
     * @param subject non-null subject of the email
     * @param body non-null body of the email
     */
    public FeedbackEmail(String from, String to, String category, String subject, String body) {
        super.setFrom(from);
        super.setTo(to);
        super.setSubject(createSubject(category, subject));
        super.setText(createBody(category, subject, body));
    }

    /**
     * Creates the body of the email from the feedback email body template.
     * @param subject non-null, user-inputted subject of the email
     * @param body non-null, user-inputted body of the email
     * @return filled in feedback email body template
     */
    private String createBody(String category, String subject, String body) {
        FeedbackEmailBodyTemplate feedbackEmailBodyTemplate = new FeedbackEmailBodyTemplate();
        feedbackEmailBodyTemplate.fillTemplate(super.getFrom(), category, subject, body);
        return feedbackEmailBodyTemplate.getBody();
    }

    /**
     * Create the subject of the email
     * @param category non-null category of the email
     * @param subject non-null subject of the email
     * @return "[category] subject"
     */
    private String createSubject(String category, String subject) {
        return String.format("[%s] %s", category, subject);
    }
}
