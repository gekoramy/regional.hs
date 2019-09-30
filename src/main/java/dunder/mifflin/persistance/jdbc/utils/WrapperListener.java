package dunder.mifflin.persistance.jdbc.utils;

import dunder.mifflin.persistance.daos.exceptions.DAOException;
import org.jooq.ExecuteContext;
import org.jooq.impl.DefaultExecuteListener;

import java.util.Optional;

public class WrapperListener extends DefaultExecuteListener {

    @Override
    public void exception(ExecuteContext ctx) {
        Optional.of(ctx)
                .map(ExecuteContext::sqlException)
                .ifPresent((e) -> {
                    throw new DAOException(e);
                });

        Optional.of(ctx)
                .map(ExecuteContext::exception)
                .ifPresent((e) -> {
                    throw new DAOException(e);
                });
    }
}
