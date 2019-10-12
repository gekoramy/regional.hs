package dunder.mifflin.utils;

import dunder.mifflin.persistance.daos.AvatarDAO;
import dunder.mifflin.persistance.pojos.Avatar;
import dunder.mifflin.persistance.pojos.Person;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

public class Avatars {

    public static String avatar50(AvatarDAO dao, String path, Person person) {
        return dao
                .byKey(person.id())
                .map(Avatar::url)
                .map((url) -> String.format("%s/assets/img/avatar/%s", path, url))
                .orElse(String.format("https://api.adorable.io/avatars/50/%s", person.email()));
    }

    public static String avatar200(AvatarDAO dao, String path, Person person) {
        return dao
                .byKey(person.id())
                .map(Avatar::url)
                .map((url) -> String.format("%s/assets/img/avatar/%s", path, url))
                .orElse(String.format("https://api.adorable.io/avatars/200/%s", person.email()));
    }

    public static Map<Long, String> avatars50(AvatarDAO dao, String path, List<Person> people) {

        final Map<Long, Avatar> stored = dao.byKeys(
                people.stream().map(Person::id).toArray(Long[]::new)
        );

        return people
                .stream()
                .collect(Collectors.toUnmodifiableMap(
                        Person::id,
                        (p) -> Optional.ofNullable(stored.get(p.id()))
                                .map(Avatar::url)
                                .map((url) -> String.format("%s/assets/img/avatar/%s", path, url))
                                .orElse(String.format("https://api.adorable.io/avatars/50/%s", p.email()))
                ));
    }
}
