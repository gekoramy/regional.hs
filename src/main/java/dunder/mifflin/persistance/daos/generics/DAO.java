package dunder.mifflin.persistance.daos.generics;

import dunder.mifflin.persistance.daos.exceptions.DAOException;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

public interface DAO<T, K> {

    long count() throws DAOException;

    Optional<T> byKey(K key) throws DAOException;

    Map<K, T> byKeys(K... keys) throws DAOException;

    Stream<T> fetchAll() throws DAOException;

}
