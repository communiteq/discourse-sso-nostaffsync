# Discourse-SSO-No Staff Sync

This plugin allows a Discourse instance using SSO to deny the SSO provider to enforce admin or moderator privileges upon SSO login.

When enabled, existing admin and moderator flags will be preserved if the SSO provider wants to reset them, 
 and non-admin and non-moderator users will not be promoted if the SSO provider wants to grant those privileges.

