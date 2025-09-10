DELIMITER //

TRUNCATE table ps_aors;

TRUNCATE table ps_auths;

TRUNCATE table ps_endpoints;

TRUNCATE table anontion_account;

DROP PROCEDURE IF EXISTS insert_pjsip_data; //

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
VALUES ('BF-L61lMATOy095wGpHwOQRhIOVs0SBiuUzagOgadh5otJLenPVRYdczp4HIqW5JJfpLjIQsQ08k6yyEJ28pmos', 'transport-id',
        'BF-L61lMATOy095wGpHwOQRhIOVs0SBiuUzagOgadh5otJLenPVRYdczp4HIqW5JJfpLjIQsQ08k6yyEJ28pmos', 'banana', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', '');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('BF-L61lMATOy095wGpHwOQRhIOVs0SBiuUzagOgadh5otJLenPVRYdczp4HIqW5JJfpLjIQsQ08k6yyEJ28pmos', 1, 'yes', 30, 'yes');

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

INSERT INTO anontion_account (account_id, client_id, client_name, client_pub, client_ts, client_uid, default_expiration,
                              is_disabled, minimum_expiration, maximum_expiration, server_signature, client_signature)
VALUES (0x00B4CEC6C41F42E6B1AEED00AAD0B419, 0xEE47F7F3F39445B588EA961517FFCDB6, '8000',
        'BF-L61lMATOy095wGpHwOQRhIOVs0SBiuUzagOgadh5otJLenPVRYdczp4HIqW5JJfpLjIQsQ08k6yyEJ28pmos',
        0, '8000:0:ee47f7f3-f394-45b5-88ea-961517ffcdb6', 300, b'0', 60, 360, '', '');

INSERT INTO anontion_account (account_id, client_id, client_name, client_pub, client_ts, client_uid, default_expiration,
                              is_disabled, minimum_expiration, maximum_expiration, server_signature, client_signature)
VALUES (0x00B4CEC6C41F42E6B1AEED00AAD0B418, 0xEE47F7F3F39445B588EA961517FFCDB5, '8001',
        'BDbsZhqHkjFlQEO7qjJnsGuk6SZWLEjEHl+fWsnm0MIY/lKf/w2TdFlo0Nm6WmauzvprsrzBH34YEBb4Io6LWvo=',
        0, '8001:0:ee47f7f3-f394-45b5-88ea-961517ffcdb5', 300, b'0', 60, 360, '', '');

INSERT INTO anontion_account (account_id, client_id, client_name, client_pub, client_ts, client_uid, default_expiration,
                              is_disabled, minimum_expiration, maximum_expiration, server_signature, client_signature)
VALUES (0x00B4CEC6C41F42E6B1AEED00AAD0B417, 0xEE47F7F3F39445B588EA961517FFCDB4, '8002',
        'BM/p/Yt6UlGRevuusc364KMor28hM9pA4KlYNHEE87xjc0Z6U2D6NH31SsuEjNjLnWVO8mu+2r2ZktCxi9k4io4=',
        0, '8002:0:ee47f7f3-f394-45b5-88ea-961517ffcdb4', 300, b'0', 60, 360, '', '');

INSERT INTO anontion_account (account_id, client_id, client_name, client_pub, client_ts, client_uid, default_expiration,
                              is_disabled, minimum_expiration, maximum_expiration, server_signature, client_signature)
VALUES (0x00B4CEC6C41F42E6B1AEED00AAD0B416, 0xEE47F7F3F39445B588EA961517FFCDB3, '8003',
        'BMewqHrwplHCDspb1iViX1U3LMqL+VfQcVFNdTmnR15t638ygV8B8/W7hERkio9LD10JKt48Urzueof2B2SdVEo=',
        0, '8003:0:ee47f7f3-f394-45b5-88ea-961517ffcdb3', 300, b'0', 60, 360, '', '');

INSERT INTO anontion_account (account_id, client_id, client_name, client_pub, client_ts, client_uid, default_expiration,
                              is_disabled, minimum_expiration, maximum_expiration, server_signature, client_signature)
VALUES (0x00B4CEC6C41F42E6B1AEED00AAD0B415, 0xEE47F7F3F39445B588EA961517FFCDB2, '8004',
        'BDp6A+inG/oIQ3k/KNXdmPmD3VAGr9iEZpDnhnxWwV2/9K/TJEDuxpskilfoR1crWtKjb3kL8KZpNMl8wzDHL7k=',
        0, '8004:0:ee47f7f3-f394-45b5-88ea-961517ffcdb2', 300, b'0', 60, 360, '', '');

COMMIT;
END; //

DELIMITER ;

CALL insert_pjsip_data();
