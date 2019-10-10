package dunder.mifflin.services;

import dunder.mifflin.persistance.pojos.General;
import dunder.mifflin.persistance.pojos.Person;

import javax.annotation.Resource;
import javax.ejb.Stateless;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;

import static javax.mail.Message.RecipientType.TO;

@Stateless
public class Emails {

    @Resource
    private Session session;

    private String debug = "";

    public void recover(Person dest, String url) throws MessagingException {
        final Message message = new MimeMessage(session);
        message.setRecipients(TO, new Address[]{new InternetAddress(debug)});
        message.setSentDate(new Date());
        message.setSubject("Ripristina password");
        message.setText(String.format(
                "Gentile %s %s,\n" +
                        "Di recente hai richiesto il ripristino della tua password\n" +
                        "Per confermare la richiesta, visita entro 2 ore il seguente link:\n" +
                        "%s\n" +
                        "\n" +
                        "Se non hai effettuato questa richiesta, o non desideri più ripristinare la tua password, elimina semplicemente questa email\n" +
                        "\n" +
                        "- Dunder Mifflin",
                dest.name(),
                dest.surname(),
                url
        ));

        Transport.send(message);
    }

    public void password(Person dest) throws MessagingException {
        final Message message = new MimeMessage(session);
        message.setRecipients(TO, new Address[]{new InternetAddress(debug)});
        message.setSentDate(new Date());
        message.setSubject("Password aggiornata");
        message.setText(String.format(
                "Gentile %s %s,\n" +
                        "Ti informiamo che la password è stata cambiata\n" +
                        "Non sei stato tu? Assicurati di cambiare subito la tua password\n" +
                        "\n" +
                        "- Dunder Mifflin",
                dest.name(),
                dest.surname()
        ));

        Transport.send(message);
    }

    public void general(Person dest, General general) throws MessagingException {
        final Message message = new MimeMessage(session);
        message.setRecipients(TO, new Address[]{new InternetAddress(debug)});
        message.setSentDate(new Date());
        message.setSubject("Medico di base modificato");
        message.setText(String.format(
                "Gentile %s %s,\n" +
                        "Da oggi il tuo medico di base è %s %s\n" +
                        "Ti ricordiamo che puoi modificare il medico di base in qualsiasi momento\n" +
                        "Non sei stato tu? Assicurati di cambiare subito la tua password\n" +
                        "\n" +
                        "- Dunder Mifflin",
                dest.name(),
                dest.surname(),
                general.name(),
                general.surname()
        ));

        Transport.send(message);
    }
}
