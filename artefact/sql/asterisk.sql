DELIMITER //

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

INSERT INTO ps_endpoints (id, transport, aors, auth, context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('8001', 'transport-id', '8001', '8001', 'external', 'all',
        'h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User <8001>');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path, mailboxes)
VALUES ('8001', 1, 'yes', 30, 'yes', '8001@example');

INSERT INTO ps_auths (id, auth_type, username, password)
VALUES ('8001', 'userpass', '8001', 'password');

INSERT INTO ps_endpoints (id, transport, aors, auth, context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('8000', 'transport-id', '8000', '8000', 'external', 'all',
        'h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User <8000>');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path, mailboxes)
VALUES ('8000', 1, 'yes', 30, 'yes', '8000@example');

INSERT INTO ps_auths (id, auth_type, username, password)
VALUES ('8000', 'userpass', '8000', 'password');

COMMIT;
END; //

DELIMITER ;

CALL insert_pjsip_data();