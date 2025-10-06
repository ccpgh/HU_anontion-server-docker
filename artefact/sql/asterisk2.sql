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
VALUES ('banana', 'md5', 'auth1', 'asterisk' ,'f8be3b93cee4e6fae1a08890b20f0a68');


INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('BJkCHL2UZlW7ak1W4Pcwvsz8wiCG8mZPU9rTfqexDLYsqro4F5EhS6_UkvfplurOmrVwfIXdRptuYS5QZ1K9aBw', 'transport-id',
        'BJkCHL2UZlW7ak1W4Pcwvsz8wiCG8mZPU9rTfqexDLYsqro4F5EhS6_UkvfplurOmrVwfIXdRptuYS5QZ1K9aBw', 'apple', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', '');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('BJkCHL2UZlW7ak1W4Pcwvsz8wiCG8mZPU9rTfqexDLYsqro4F5EhS6_UkvfplurOmrVwfIXdRptuYS5QZ1K9aBw', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, realm, md5_cred)
VALUES ('apple', 'md5', 'auth2', 'asterisk', '62c44cb9b3f25220a66516dd7a817a50');


INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('BF8btYvuAUT-fe0GnlOgwOArdJB8_qcYB_bqRLGYOjmuVY5wT92JbbrBVNO89GHbycqR5dOScrOilM0iz4zfT6c', 'transport-id',
        'BF8btYvuAUT-fe0GnlOgwOArdJB8_qcYB_bqRLGYOjmuVY5wT92JbbrBVNO89GHbycqR5dOScrOilM0iz4zfT6c', 'peach', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', '');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('BF8btYvuAUT-fe0GnlOgwOArdJB8_qcYB_bqRLGYOjmuVY5wT92JbbrBVNO89GHbycqR5dOScrOilM0iz4zfT6c', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, realm, md5_cred)
VALUES ('peach', 'md5', 'auth3', 'asterisk', '7ed445adb0eb41907f06ccc4b6864e9e');


INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('BCo7XbR6THLHOylTzfQHULASjB_Hpyxi1aRTTfGvoz2iLRP3Zhd6BNM9quUBicYJN0vpRtc1Bjvq5Kzl53oQIkk', 'transport-id',
        'BCo7XbR6THLHOylTzfQHULASjB_Hpyxi1aRTTfGvoz2iLRP3Zhd6BNM9quUBicYJN0vpRtc1Bjvq5Kzl53oQIkk', 'orange', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', '');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('BCo7XbR6THLHOylTzfQHULASjB_Hpyxi1aRTTfGvoz2iLRP3Zhd6BNM9quUBicYJN0vpRtc1Bjvq5Kzl53oQIkk', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, realm, md5_cred)
VALUES ('orange', 'md5', 'auth4', 'asterisk', '2cccf6d656f972249d8416292414da9c');


INSERT INTO ps_endpoints (id, transport, aors, auth, context, message_context, disallow, allow, direct_media,
                          trust_id_outbound, dtmf_mode, force_rport, rtp_symmetric,
                          send_rpid, ice_support, tos_video, cos_video, allow_subscribe, callerid)
VALUES ('BHUj-MXrlUPcVOXPHVDwu5p7rEkp5gi34ONc0Rs2xNPjx1lXp-RR5MH0f_i5opJRxaAUJAQjVHTkZmnMp_11ZLk', 'transport-id',
        'BHUj-MXrlUPcVOXPHVDwu5p7rEkp5gi34ONc0Rs2xNPjx1lXp-RR5MH0f_i5opJRxaAUJAQjVHTkZmnMp_11ZLk', 'apricot', 'external', 'messages', 'all',
        'opus,h264,g729,gsm', 'no', 'yes', 'rfc4733', 'yes',
        'yes', 'yes', 'yes', 'af41', 4, 'yes', '');

INSERT INTO ps_aors (id, max_contacts, remove_existing, qualify_frequency, support_path)
VALUES ('BHUj-MXrlUPcVOXPHVDwu5p7rEkp5gi34ONc0Rs2xNPjx1lXp-RR5MH0f_i5opJRxaAUJAQjVHTkZmnMp_11ZLk', 1, 'yes', 30, 'yes');

INSERT INTO ps_auths (id, auth_type, username, realm, md5_cred)
VALUES ('apricot', 'md5', 'auth5', 'asterisk', 'c0e20f90c4017bdb9c5f4f5191a7a854');

INSERT INTO anontion_account (account_id, client_id, client_name, client_pub, client_ts, client_uid, default_expiration,
                              is_disabled, minimum_expiration, maximum_expiration, server_signature, client_signature, account_type)
VALUES (0x00B4CEC6C41F42E6B1AEED00AAD0B419, 0xEE47F7F3F39445B588EA961517FFCDB6, 'auth1',
        'BF/L61lMATOy095wGpHwOQRhIOVs0SBiuUzagOgadh5otJLenPVRYdczp4HIqW5JJfpLjIQsQ08k6yyEJ28pmos=',
        0, 'auth1:0:ee47f7f3-f394-45b5-88ea-961517ffcdb6', 300, b'0', 60, 360, '', '', 'authorized');

INSERT INTO anontion_account (account_id, client_id, client_name, client_pub, client_ts, client_uid, default_expiration,
                              is_disabled, minimum_expiration, maximum_expiration, server_signature, client_signature, account_type)
VALUES (0x00B4CEC6C41F42E6B1AEED00AAD0B418, 0xEE47F7F3F39445B588EA961517FFCDB5, 'auth2',
        'BJkCHL2UZlW7ak1W4Pcwvsz8wiCG8mZPU9rTfqexDLYsqro4F5EhS6+UkvfplurOmrVwfIXdRptuYS5QZ1K9aBw=',
        0, 'auth2:0:ee47f7f3-f394-45b5-88ea-961517ffcdb5', 300, b'0', 60, 360, '', '','authorized');

INSERT INTO anontion_account (account_id, client_id, client_name, client_pub, client_ts, client_uid, default_expiration,
                              is_disabled, minimum_expiration, maximum_expiration, server_signature, client_signature, account_type)
VALUES (0x00B4CEC6C41F42E6B1AEED00AAD0B417, 0xEE47F7F3F39445B588EA961517FFCDB4, 'auth3',
        'BF8btYvuAUT/fe0GnlOgwOArdJB8+qcYB+bqRLGYOjmuVY5wT92JbbrBVNO89GHbycqR5dOScrOilM0iz4zfT6c=',
        0, 'auth3:0:ee47f7f3-f394-45b5-88ea-961517ffcdb4', 300, b'0', 60, 360, '', '', 'authorized');

INSERT INTO anontion_account (account_id, client_id, client_name, client_pub, client_ts, client_uid, default_expiration,
                              is_disabled, minimum_expiration, maximum_expiration, server_signature, client_signature, account_type)
VALUES (0x00B4CEC6C41F42E6B1AEED00AAD0B416, 0xEE47F7F3F39445B588EA961517FFCDB3, 'auth4',
        'BCo7XbR6THLHOylTzfQHULASjB+Hpyxi1aRTTfGvoz2iLRP3Zhd6BNM9quUBicYJN0vpRtc1Bjvq5Kzl53oQIkk=',
        0, 'auth4:0:ee47f7f3-f394-45b5-88ea-961517ffcdb3', 300, b'0', 60, 360, '', '', 'authorized');

INSERT INTO anontion_account (account_id, client_id, client_name, client_pub, client_ts, client_uid, default_expiration,
                              is_disabled, minimum_expiration, maximum_expiration, server_signature, client_signature, account_type)
VALUES (0x00B4CEC6C41F42E6B1AEED00AAD0B415, 0xEE47F7F3F39445B588EA961517FFCDB2, 'auth5',
        'BHUj/MXrlUPcVOXPHVDwu5p7rEkp5gi34ONc0Rs2xNPjx1lXp/RR5MH0f+i5opJRxaAUJAQjVHTkZmnMp+11ZLk=',
        0, 'auth5:0:ee47f7f3-f394-45b5-88ea-961517ffcdb2', 300, b'0', 60, 360, '', '', 'authorized');

COMMIT;
END; //

DELIMITER ;

CALL insert_pjsip_data();
