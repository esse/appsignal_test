use Mix.Config

config :appsignal, :config,
  active: true,
  otp_app: :appsignal_test,
  name: "appsignal_test_another_2",
  push_api_key: "your-key",
  env: Mix.env
