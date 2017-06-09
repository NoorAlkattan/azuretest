Rails.application.config.middleware.use OmniAuth::Builder do
    provider :azure_activedirectory, "6586e42d-17ca-4ad5-a5d6-451fd617c364", "39b8bf67-81a5-4a8f-8bbb-75b05884f533"
end