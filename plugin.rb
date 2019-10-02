# name: discourse-sso-nostaffsync
# about: Disable syncing moderator and admin privs
# version: 1.0.0
# authors: Richard <richard@discoursehosting.com>
# url: https://github.com/discoursehosting/discourse-sso-nostaffsync

enabled_site_setting :sso_does_not_override_staff

after_initialize do
  module DiscourseSingleSignOnExtension
    def lookup_or_create_user(ip_address = nil)
      if SiteSetting.sso_does_not_override_staff
        self.admin = nil
        self.moderator = nil
      end
      super(ip_address)
    end
  end

  class ::DiscourseSingleSignOn
    prepend DiscourseSingleSignOnExtension
  end
end

