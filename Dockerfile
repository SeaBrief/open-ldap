FROM osixia/openldap:1.5.0

COPY ./certs /container/service/slapd/assets/certs

ENV LDAP_ORGANISATION="Seaonics AS"
ENV LDAP_DOMAIN="seaonics.com"
ENV LDAP_ADMIN_PASSWORD="JonSn0w"

ENV LDAP_TLS_CRT_FILENAME=my-ldap.crt
ENV LDAP_TLS_KEY_FILENAME=my-ldap.key
ENV LDAP_TLS_CA_CRT_FILENAME=the-ca.crt

CMD ["--copy-service"]