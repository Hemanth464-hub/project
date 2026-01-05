resource "google_service_account" "app_sa" {
  account_id   = "app-service-account"
  display_name = "Application SA"
}
