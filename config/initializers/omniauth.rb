Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "XCAPDhcDecC718Sj7Yj1A", "gmF6EpFSj2hyRh30aHWj6rwTOFXswDFqZJ9ZTobO34"
  provider :instagram, "2485542ff77048aeab4f84d5c607f54a", "1fac4c466ac74d66bd7740674d5339b6"
end