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
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User <8001>');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('8001', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, password)
VALUES ('8001', 'userpass', '8001', 'password');

INSERT INTO ps_endpoints (id, transport, aors, auth, context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('8000', 'transport-id', '8000', '8000', 'external', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User <8000>');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('8000', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, password)
VALUES ('8000', 'userpass', '8000', 'password');

INSERT INTO ps_endpoints (id, transport, aors, auth, context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('NEH3pWZLb-Y6vobsYxx0B6U12p6XchXPgGZnbATL', 'transport-id', 'NEH3pWZLb-Y6vobsYxx0B6U12p6XchXPgGZnbATL', 'BKPKBkHMq0ZBvutaIX6ngjQs7urTAgeKCjl/XcXOal3lqb9vBB9JHCcH7cIetYH/w0t7ChsXGMrV6S/DWlvxMYw=', 'external', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User <test1>');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('NEH3pWZLb-Y6vobsYxx0B6U12p6XchXPgGZnbATL', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, password)
VALUES ('BKPKBkHMq0ZBvutaIX6ngjQs7urTAgeKCjl/XcXOal3lqb9vBB9JHCcH7cIetYH/w0t7ChsXGMrV6S/DWlvxMYw=', 'userpass', '8002', 'password');

COMMIT;
END; //

DELIMITER ;

CALL insert_pjsip_data();