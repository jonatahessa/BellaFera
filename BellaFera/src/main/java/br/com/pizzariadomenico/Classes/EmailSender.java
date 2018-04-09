package br.com.pizzariadomenico.Classes;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class EmailSender {

    public static boolean enviaEmail(Cliente cliente) throws AddressException, MessagingException {

        String to = "jon.hmo@outlook.com";

        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.socketFactory.port", "465");
        properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.port", "465");

        Session session = Session.getDefaultInstance(properties,
                new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("jonata.hessa@gmail.com", "br@sil3000");
            }
        });

        MimeMessage message = new MimeMessage(session);
        message.setFrom(new InternetAddress("jonata.hessa@gmail.com"));
        message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
        message.setSubject("Cadastro de Cliente");
        message.setText("Nome: " + cliente.getNome() + "\n"
                + "Email: " + cliente.getEmail() + "\n"
                + "Telefone: " + cliente.getTelefone() + "\n"
                + "Cep: " + cliente.getCep() + "\n"
                + "Endereço: " + cliente.getEndereco() + " " + cliente.getNumero() + "\n"
                + " Complemento: " + cliente.getComplemento());

        Transport.send(message);

        return true;
    }
}
