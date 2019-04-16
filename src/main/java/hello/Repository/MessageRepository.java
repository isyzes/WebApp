package hello.Repository;

import hello.domain.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, Integer> {
    List<Message> findByTeg(String teg);
    Iterable<Message> findByText(String text);
    List<Message> findByTextOrTeg(String text, String teg);
}