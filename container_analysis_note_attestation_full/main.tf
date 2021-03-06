resource "google_container_analysis_note" "note" {
  name = "attestor-note-${local.name_suffix}"

  short_description = "test note"
  long_description = "a longer description of test note"
  expiration_time = "2120-10-02T15:01:23.045123456Z"

  related_url {
    url = "some.url"
    label = "foo"
  }

  related_url {
    url = "google.com"
  }

  attestation_authority {
    hint {
      human_readable_name = "Attestor Note"
    }
  }
}
