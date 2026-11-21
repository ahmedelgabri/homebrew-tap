cask "mycal" do
  version "0.2.0-305.g72502d2"
  sha256 "9ec8cf46d7ee249669d49c2fc083dab1b3afcb238a7fea655366c52f39c58542"

  url "https://api.github.com/repos/ahmedelgabri/MyCal/releases/assets/776607522",
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
