package hello.Repository;

import hello.domain.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepository extends CrudRepository<Message, Integer> {
    List<Message> findByTag(String tag);
    Iterable<Message> findByText(String text);
    List<Message> findByTextOrTag(String text, String tag);
}