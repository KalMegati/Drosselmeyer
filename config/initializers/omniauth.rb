Rails.application.config.middleware.use OmniAuth::Builder do
    # provider :developer unless Rails.env.production?
    provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], {
        callback_path: '/auth/github/callback'
    }
end