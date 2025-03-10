package dunder.mifflin.utils;

import com.github.cliftonlabs.json_simple.JsonArray;
import com.github.cliftonlabs.json_simple.JsonObject;
import dunder.mifflin.persistence.pojos.Examination;
import dunder.mifflin.persistence.pojos.HsExam;
import dunder.mifflin.persistence.pojos.Medicine;
import dunder.mifflin.persistence.pojos.Person;

import java.util.List;
import java.util.Map;
import java.util.stream.Collector;

import static java.time.format.DateTimeFormatter.ISO_DATE;

public class Jsonify {

    public static JsonObject json(Examination exam, List<Person> qualified, Map<Long, String> avatars) {
        return new JsonObject(Map.of(
                "id", exam.id(),
                "name", exam.name(),
                "info", exam.info(),
                "hs", exam instanceof HsExam,
                "qualified", qualified.stream().map((p) -> json(p, avatars)).collect(array())
        ));
    }

    public static JsonObject json(Medicine medicine) {
        return new JsonObject(Map.of(
                "id", medicine.id(),
                "name", medicine.name(),
                "info", medicine.info()
        ));
    }

    public static JsonObject json(Person person, Map<Long, String> avatars) {
        return new JsonObject(Map.of(
                "id", person.id(),
                "avatar", avatars.get(person.id()),
                "fc", person.fc(),
                "gender", person.gender(),
                "email", person.email(),
                "birthday", person.birthday().format(ISO_DATE),
                "name", person.name(),
                "surname", person.surname()
        ));
    }

    public static Collector<JsonObject, JsonArray, JsonArray> array() {
        return Collector.of(
                JsonArray::new,
                JsonArray::addChain,
                JsonArray::addAllChain
        );
    }
}
