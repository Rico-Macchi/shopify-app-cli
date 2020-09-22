# frozen_string_literal: true
module Theme
  module Messages
    MESSAGES = {
      theme: {
        checking_themekit: "Verifying Theme Kit",
        create: {
          creating_theme: "Creating theme %s",
          duplicate_theme: "Duplicate theme",
          failed: "Couldn't create the theme",
          help: <<~HELP,
            {{command:%s create theme}}: Creates a theme.
              Usage: {{command:%s create theme}}
              Options:
                {{command:--store=MYSHOPIFYDOMAIN}} Store URL. Must be an existing store.
                {{command:--password=PASSWORD}} Private app password. App must have Read and Write Theme access.
                {{command:--name=NAME}} Theme name. Any string.
          HELP
          info: {
            created: "{{green:%s}} was created for {{underline:%s}} in {{green:%s}}",
          },
        },
        deploy: {
          abort: "Theme wasn't deployed",
          confirmation: "This will change your live theme. Do you wish to proceed?",
          deploying: "Deploying theme",
          error: "Theme couldn't be deployed",
          info: {
            deployed: "Theme was updated and set as the live theme",
            pushed: "All theme files were updated",
          },
          push_fail: "Theme files couldn't be updated",
        },
        forms: {
          create: {
            ask_password: "Password:",
            ask_store: "Store domain:",
            ask_title: "Title:",
            errors: "%s can't be blank",
            private_app: <<~APP,
              To create a new theme, Shopify App CLI needs to connect with a private app installed on your store. Visit {{underline:%s/admin/apps/private}} to create a new API key and password, or retrieve an existing password.
              If you create a new private app, ensure that it has Read and Write Theme access.",
            APP
          },
        },
        push: {
          remove_abort: "Theme files weren't deleted",
          remove_confirm: "This will delete the local and remote copies of the theme files. Do you wish to proceed?",
          error: {
            push_error: "Theme files couldn't be pushed to Shopify",
            remove_error: "Theme files couldn't be removed from Shopify",
          },
          help: <<~HELP,
            {{command:%s push}}: Uploads your local theme files to Shopify, overwriting the remote versions. If you specify filenames, separated by a space, only those files will be replaced. Otherwise, the whole theme will be replaced.
              Usage: {{command:%s push}}
              Options:
                {{command:--remove}} Deletes both the local and the remote copies of the specified files. At least one filename must be specified.
                {{command:--allow-live}} Allows Shopify App CLI to replace files on the store's live production theme.
                {{command:--nodelete}} Runs the push command without deleting remote files from Shopify.
          HELP
          info: {
            push: "Theme files were pushed from {{green:%s}} to Shopify",
            remove: "Theme files were deleted from {{green:%s}} and Shopify",
          },
          push: "Pushing theme files to Shopify",
          remove: "Deleting theme files",
        },
        serve: {
          help: <<~HELP,
            Sync your current changes, then view the active store in your default browser. Any theme edits will continue to update in real time. Also prints the active store's URL in your terminal.
            Usage: {{command:%s serve}}
          HELP
          serve: "Viewing theme...",
          open_fail: "Couldn't open the theme",
        },
        tasks: {
          ensure_themekit_installed: {
            downloading: "Downloading Theme Kit %s",
            errors: {
              digest_fail: "Unable to verify download",
              releases_fail: "Unable to fetch Theme Kit's list of releases",
              write_fail: "Unable to download Theme Kit",
            },
            successful: "Theme Kit installed successfully",
            verifying: "Verifying download...",
          },
        },
      },
    }.freeze
  end
end