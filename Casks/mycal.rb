cask "mycal" do
  version "0.3.0-407.gbf5e224"
  sha256 "f68f3db7c6e9caf6705dbb6367e050365bad370e16c4006d3c4fc1a892fd698f"

  url "https://api.github.com/repos/ahmedelgabri/MyCal/releases/assets/780938711",
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
