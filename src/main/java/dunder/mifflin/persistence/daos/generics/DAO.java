package dunder.mifflin.persistence.daos.generics;

import dunder.mifflin.persistence.daos.exceptions.DAOException;

import java.util.Map;
import java.util.Optional;
import java.util.stream.Stream;

/**
 * The basic DAO interface that all DAOs must implement.
 *
 * @param <T> the class of the entity to handle
 * @param <K> the class of the primary key of the entity the DAO handle
 */
public interface DAO<T, K> {

    /**
     * @return the number of records present into the storage system
     * @throws DAOException if an error occurred during the information retrieving
     */
    long count() throws DAOException;

    /**
     * @param key the primary key used to obtain the entity instance
     * @return the {@code T} instance of the storage system record with the primary key equals to the one passed as parameter or {@code Optional.empty()} if no entities with that primary key is present into the storage system
     * @throws DAOException if an error occurred during the information retrieving
     */
    Optional<T> byKey(K key) throws DAOException;

    /**
     * @param keys a bunch of primary keys used to obtain the entity instances
     * @return foreach keys passed as parameter, an entry, which have {@code K} as key and the {@code T} instance of the storage system record with the same primary key
     * @throws DAOException if an error occurred during the information retrieving
     */
    Map<K, T> byKeys(K... keys) throws DAOException;

    /**
     * @return the list of all the valid entities of type {@code T}.
     * @throws DAOException if an error occurred during the information retrieving
     */
    Stream<T> fetchAll() throws DAOException;

}
