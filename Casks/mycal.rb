cask "mycal" do
  version "0.3.0-371.g8765369"
  sha256 "5470f6d26aa45d0e70b7cca12702e6bc4e26138a2fefd313369c21b5da1b3958"

  url "https://api.github.com/repos/ahmedelgabri/MyCal/releases/assets/780234146",
      header: [
        "Accept: application/octet-stream",
        "Authorization: Bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}",
      ]
  name "MyCal"
  desc "Calendar for several Google accounts and the calendars on this Mac"
  homepage "https://github.com/ahmedelgabri/MyCal"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MyCal.app"

  zap trash: [
    "~/Library/Application Support/MyCal",
    "~/Library/Preferences/com.ahmedelgabri.mycal.plist",
    "~/Library/Saved Application State/com.ahmedelgabri.mycal.savedState",
  ]

  caveats <<~EOS
    MyCal's repository is private. To install or upgrade it, give Homebrew a GitHub token
    that can read ahmedelgabri/MyCal:
      HOMEBREW_GITHUB_API_TOKEN="$(gh auth token)" brew upgrade --cask ahmedelgabri/tap/mycal
  EOS
end
