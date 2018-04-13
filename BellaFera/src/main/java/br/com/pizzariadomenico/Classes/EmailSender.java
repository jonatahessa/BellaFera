package br.com.pizzariadomenico.Classes;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class EmailSender {

    public static boolean enviaEmail(Cliente cliente) throws AddressException, MessagingException {

        String to = "contato@bellaeferapizzaria.com.br";

        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.socketFactory.port", "465");
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.port", "465");

        Session session = Session.getDefaultInstance(properties,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("bellaeferapizzaria@gmail.com", "");
            }
        });

        MimeMessage message = new MimeMessage(session);
        message.setFrom(new InternetAddress("jonata.hessa@gmail.com"));
        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
        message.setSubject("Cadastro de Cliente");
        message.setText("Nome: " + cliente.getNome() + "\n\n"
                + "Email: " + cliente.getEmail() + "\n\n"
                + "Telefone: " + cliente.getTelefone() + "\n\n"
                + "Cep: " + cliente.getCep() + "\n\n"
                + "Endereço: " + cliente.getEndereco() + " " + cliente.getNumero() + "\n\n"
                + " Complemento: " + cliente.getComplemento());

        Transport.send(message);

        return true;
    }
}
