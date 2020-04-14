FROM couchbase:community-6.5.0

COPY configure.sh /opt/couchbase

CMD ["/opt/couchbase/configure.sh"]