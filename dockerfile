FROM mysql:8

ENV WORK_PATH /usr/local/work

ENV AUTO_RUN_DIR /docker-entrypoint-initdb.d

ENV FILE_0 create_sql.sql

ENV INSTALL_DATA_SHELL setup.sh

RUN mkdir -p $WORK_PATH

COPY ./$FILE_0 $WORK_PATH/

COPY ./$INSTALL_DATA_SHELL $AUTO_RUN_DIR/

RUN chmod a+x $AUTO_RUN_DIR/$INSTALL_DATA_SHELL