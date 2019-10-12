package dunder.mifflin.services;

import dunder.mifflin.persistance.pojos.General;
import dunder.mifflin.persistance.pojos.Person;

import javax.annotation.Resource;
import javax.ejb.Stateless;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Optional;

import static javax.mail.Message.RecipientType.TO;

@Stateless
public class Emails {

    @Resource
    private Session session;

    @Resource
    private InternetAddress debug;

    private void send(Person dest, String subject, String content) throws MessagingException {
        final Message message = new MimeMessage(session);
        message.setRecipients(TO, new Address[]{
                Optional.ofNullable(debug).orElse(new InternetAddress(dest.email()))
        });
        message.setSentDate(new Date());
        message.setSubject(subject);
        message.setText(content);
        Transport.send(message);
    }

    public void recover(Person dest, String url) throws MessagingException {
        send(
                dest,
                "Ripristina password",
                String.format(
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
                )
        );
    }

    public void password(Person dest) throws MessagingException {
        send(
                dest,
                "Password aggiornata",
                String.format(
                        "Gentile %s %s,\n" +
                                "Ti informiamo che la password è stata cambiata\n" +
                                "Non sei stato tu? Assicurati di cambiare subito la tua password\n" +
                                "\n" +
                                "- Dunder Mifflin",
                        dest.name(),
                        dest.surname()
                )
        );
    }

    public void general(Person dest, General general) throws MessagingException {
        send(
                dest,
                "Medico di base modificato",
                String.format(
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
                )
        );
    }

    public void exam(Person dest, General general) throws MessagingException {
        send(
                dest,
                "Nuova prescrizione",
                String.format(
                        "Gentile %s %s,\n" +
                                "%s %s ti ha prescritto un esame\n" +
                                "\n" +
                                "- Dunder Mifflin",
                        dest.name(),
                        dest.surname(),
                        general.name(),
                        general.surname()
                )
        );
    }

    public void medicine(Person dest, General general) throws MessagingException {
        send(
                dest,
                "Nuova prescrizione",
                String.format(
                        "Gentile %s %s,\n" +
                                "%s %s ti ha prescritto un farmaco\n" +
                                "\n" +
                                "- Dunder Mifflin",
                        dest.name(),
                        dest.surname(),
                        general.name(),
                        general.surname()
                )
        );
    }

    public void report(Person dest, Person responsible) throws MessagingException {
        send(
                dest,
                "Nuovo referto",
                String.format(
                        "Gentile %s %s,\n" +
                                "%s %s ha pubblicato un referto che ti riguarda\n" +
                                "\n" +
                                "- Dunder Mifflin",
                        dest.name(),
                        dest.surname(),
                        responsible.name(),
                        responsible.surname()
                )
        );
    }
}
