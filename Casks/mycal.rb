cask "mycal" do
  version "0.3.0-419.g57235bf"
  sha256 "0c618f1704d0c5ffeb810904855c3a26ff66c4878d730ef47955be850de0f5be"

  url "https://api.github.com/repos/ahmedelgabri/MyCal/releases/assets/782398930",
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
