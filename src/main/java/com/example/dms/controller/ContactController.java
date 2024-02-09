package com.example.dms.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.dms.model.Contact;

import jakarta.servlet.http.HttpServletRequest;

@RestController
public class ContactController {
    private final ContactService contactService;

    @Autowired
    public ContactController(ContactService contactService) {
        this.contactService = contactService;
    }

    @PostMapping("/insertuser/contact")
    public String insertUser1(HttpServletRequest request) {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String cntname = request.getParameter("cntname");
        String sub = request.getParameter("sub");

        Contact c = new Contact();
        c.setFirstname(firstname);
        c.setLastname(lastname);
        c.setCntname(cntname);
        c.setSub(sub);

        contactService.saveContact(c);

        return "contactus";
    }
}
