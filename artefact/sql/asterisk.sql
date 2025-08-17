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

INSERT INTO ps_auths (id, auth_type, username, password)
VALUES ('banana', 'userpass', '8000', 'password');


INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('8001', 'transport-id', '8001', 'apple', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User <8001>');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('8001', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, password)
VALUES ('apple', 'userpass', '8001', 'password');

INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('8002', 'transport-id', '8002', 'peach', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User <8001>');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('8002', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, password)
VALUES ('peach', 'userpass', '8002', 'password');

INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('8003', 'transport-id', '8003', 'orange', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User <8001>');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('8003', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, password)
VALUES ('orange', 'userpass', '8003', 'password');

INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('BJopW7lOiHT9tb0BLgUsvUryEZjoeiKZUFbVSqppItX183QMhpMQmYOA8rQF1YL426lkJ8ML81XTmT4dn', 'transport-id',
        'BJopW7lOiHT9tb0BLgUsvUryEZjoeiKZUFbVSqppItX183QMhpMQmYOA8rQF1YL426lkJ8ML81XTmT4dn', 'cherry', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('BJopW7lOiHT9tb0BLgUsvUryEZjoeiKZUFbVSqppItX183QMhpMQmYOA8rQF1YL426lkJ8ML81XTmT4dn', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, password)
VALUES ('cherry', 'userpass', 'cc1', 'password');

INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('BJopW7lOiHT9tb0BLgUsvUryEZjoeiKZUFbVSqppItX183QMhpMQmYOA8rQF1YL426lkJ8ML81XTmT4', 'transport-id',
        'BJopW7lOiHT9tb0BLgUsvUryEZjoeiKZUFbVSqppItX183QMhpMQmYOA8rQF1YL426lkJ8ML81XTmT4', 'strawberry', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('BJopW7lOiHT9tb0BLgUsvUryEZjoeiKZUFbVSqppItX183QMhpMQmYOA8rQF1YL426lkJ8ML81XTmT4', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, password)
VALUES ('strawberry', 'userpass', 'cc2', 'password');

INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('BJopW7lOiHT9tb0BLgUsvUryEZjoeiKZUFbVSqppItX183QMhpMQmYOA8rQF1YL426lkJ8ML81XTmT412345678901234567890', 'transport-id',
        'BJopW7lOiHT9tb0BLgUsvUryEZjoeiKZUFbVSqppItX183QMhpMQmYOA8rQF1YL426lkJ8ML81XTmT412345678901234567890', 'apricot', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', 'User');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('BJopW7lOiHT9tb0BLgUsvUryEZjoeiKZUFbVSqppItX183QMhpMQmYOA8rQF1YL426lkJ8ML81XTmT412345678901234567890', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, password)
VALUES ('apricot', 'userpass', 'cc3', 'password');

COMMIT;
END; //

DELIMITER ;

CALL insert_pjsip_data();
