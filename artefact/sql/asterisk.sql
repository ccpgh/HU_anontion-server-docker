DELIMITER //

TRUNCATE table ps_aors;

TRUNCATE table ps_auths;

TRUNCATE table ps_endpoints;

DROP PROCEDURE IF EXISTS insert_pjsip_data; //

TRUNCATE ps_transports; //
TRUNCATE ps_endpoints; //
TRUNCATE ps_auths; //
TRUNCATE ps_aors; //

CREATE PROCEDURE insert_pjsip_data()
BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
BEGIN
SELECT 'An SQL error occurred, rolling back.';
ROLLBACK;
END;

START TRANSACTION;

INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('BJDZURcI20OX6LBfxY7DTJioaWfYXWSoXFmD5fixzhXTe_E2NyRH3YYpBbtoMemlPk3kWIuULffesi2uTv7ZX_E', 'transport-id',
        'BJDZURcI20OX6LBfxY7DTJioaWfYXWSoXFmD5fixzhXTe_E2NyRH3YYpBbtoMemlPk3kWIuULffesi2uTv7ZX_E', 'banana', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', '');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('BJDZURcI20OX6LBfxY7DTJioaWfYXWSoXFmD5fixzhXTe_E2NyRH3YYpBbtoMemlPk3kWIuULffesi2uTv7ZX_E', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, realm, md5_cred)
VALUES ('banana', 'md5', '8000', 'asterisk' ,'f8be3b93cee4e6fae1a08890b20f0a68');


INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('BDbsZhqHkjFlQEO7qjJnsGuk6SZWLEjEHl_fWsnm0MIY-lKf-w2TdFlo0Nm6WmauzvprsrzBH34YEBb4Io6LWvo', 'transport-id',
        'BDbsZhqHkjFlQEO7qjJnsGuk6SZWLEjEHl_fWsnm0MIY-lKf-w2TdFlo0Nm6WmauzvprsrzBH34YEBb4Io6LWvo', 'apple', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', '');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('BDbsZhqHkjFlQEO7qjJnsGuk6SZWLEjEHl_fWsnm0MIY-lKf-w2TdFlo0Nm6WmauzvprsrzBH34YEBb4Io6LWvo', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, realm, md5_cred)
VALUES ('apple', 'md5', '8001', 'asterisk', '62c44cb9b3f25220a66516dd7a817a50');


INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('BM-p-Yt6UlGRevuusc364KMor28hM9pA4KlYNHEE87xjc0Z6U2D6NH31SsuEjNjLnWVO8mu_2r2ZktCxi9k4io4', 'transport-id',
        'BM-p-Yt6UlGRevuusc364KMor28hM9pA4KlYNHEE87xjc0Z6U2D6NH31SsuEjNjLnWVO8mu_2r2ZktCxi9k4io4', 'peach', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', '');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('BM-p-Yt6UlGRevuusc364KMor28hM9pA4KlYNHEE87xjc0Z6U2D6NH31SsuEjNjLnWVO8mu_2r2ZktCxi9k4io4', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, realm, md5_cred)
VALUES ('peach', 'md5', '8002', 'asterisk', '7ed445adb0eb41907f06ccc4b6864e9e');


INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('BMewqHrwplHCDspb1iViX1U3LMqL_VfQcVFNdTmnR15t638ygV8B8-W7hERkio9LD10JKt48Urzueof2B2SdVEo', 'transport-id',
        'BMewqHrwplHCDspb1iViX1U3LMqL_VfQcVFNdTmnR15t638ygV8B8-W7hERkio9LD10JKt48Urzueof2B2SdVEo', 'orange', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', '');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('BMewqHrwplHCDspb1iViX1U3LMqL_VfQcVFNdTmnR15t638ygV8B8-W7hERkio9LD10JKt48Urzueof2B2SdVEo', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, realm, md5_cred)
VALUES ('orange', 'md5', '8003', 'asterisk', '2cccf6d656f972249d8416292414da9c');


INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('BDp6A_inG-oIQ3k-KNXdmPmD3VAGr9iEZpDnhnxWwV2-9K-TJEDuxpskilfoR1crWtKjb3kL8KZpNMl8wzDHL7k', 'transport-id',
        'BDp6A_inG-oIQ3k-KNXdmPmD3VAGr9iEZpDnhnxWwV2-9K-TJEDuxpskilfoR1crWtKjb3kL8KZpNMl8wzDHL7k', 'apricot', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', '');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('BDp6A_inG-oIQ3k-KNXdmPmD3VAGr9iEZpDnhnxWwV2-9K-TJEDuxpskilfoR1crWtKjb3kL8KZpNMl8wzDHL7k', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, realm, md5_cred)
VALUES ('apricot', 'md5', '8004', 'asterisk', 'c0e20f90c4017bdb9c5f4f5191a7a854');

COMMIT;
END; //

DELIMITER ;

CALL insert_pjsip_data();
