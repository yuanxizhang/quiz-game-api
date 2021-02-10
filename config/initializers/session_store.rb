if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_super_awesome_api', domain: '_online-quiz-api'
else
    Rails.application.config.session_store :cookie_store, key: '_super_awesome_api'
end