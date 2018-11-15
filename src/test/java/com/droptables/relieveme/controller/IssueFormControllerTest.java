package com.droptables.relieveme.controller;

import com.droptables.relieveme.domain.Issue;
import com.droptables.relieveme.email.EmailService;
import com.droptables.relieveme.service.BathroomService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import static org.mockito.Mockito.verify;

@RunWith(MockitoJUnitRunner.class)
public class IssueFormControllerTest {

    @Mock
    private EmailService emailService;

    @Mock
    private BathroomService bathroomService;

    @InjectMocks
    private IssueFormController issueFormController;

    @Test
    public void givenIssueThenCallEmailService() {
        Issue issue = new Issue("from", "issue", 0, "cats roosting in bathroom", "THERE ARE CATS");
        issueFormController.submitIssue(issue);
        verify(emailService).sendIssueEmail("from", "issue", 0, "cats roosting in bathroom", "THERE ARE CATS");
    }

    @Test
    public void givenIssueThenUpdateBathroom() {
        Issue issue = new Issue("from", "issue", 642, "birds roosting in bathroom", "THERE ARE BIRDS");
        issueFormController.submitIssue(issue);
        verify(bathroomService).setOngoingBathroomIssueToTrue(642);
    }
}