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
VALUES ('8000', 'transport-id', '8000', 'banana', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User <8000>');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('8000', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, realm, md5_cred)
VALUES ('banana', 'md5', '8000', 'asterisk' ,'f8be3b93cee4e6fae1a08890b20f0a68');


INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('8001', 'transport-id', '8001', 'apple', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User <8001>');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('8001', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, realm, md5_cred)
VALUES ('apple', 'md5', '8001', 'asterisk', '62c44cb9b3f25220a66516dd7a817a50');


INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('8002', 'transport-id', '8002', 'peach', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User <8001>');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('8002', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, realm, md5_cred)
VALUES ('peach', 'md5', '8002', 'asterisk', '7ed445adb0eb41907f06ccc4b6864e9e');


INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('8003', 'transport-id', '8003', 'orange', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User <8001>');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('8003', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, realm, md5_cred)
VALUES ('orange', 'md5', '8003', 'asterisk', '2cccf6d656f972249d8416292414da9c');


INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('BJopW7lOiHT9tb0BLgUsvUryEZjoeiKZUFbVSqppItX183QMhpMQmYOA8rQF1YL426lkJ8ML81XTmT412345678901234567890', 'transport-id',
        'BJopW7lOiHT9tb0BLgUsvUryEZjoeiKZUFbVSqppItX183QMhpMQmYOA8rQF1YL426lkJ8ML81XTmT412345678901234567890', 'apricot', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('BJopW7lOiHT9tb0BLgUsvUryEZjoeiKZUFbVSqppItX183QMhpMQmYOA8rQF1YL426lkJ8ML81XTmT412345678901234567890', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, realm, md5_cred)
VALUES ('apricot', 'md5', '8004', 'asterisk', 'c0e20f90c4017bdb9c5f4f5191a7a854');

COMMIT;
END; //

DELIMITER ;

CALL insert_pjsip_data();
