cask "mycal" do
  version "0.2.0-311.g14d059d"
  sha256 "a5f86de5b54d4d47afb99cd2a4fcbfc10055446c6bef3c2831348ffc004d2100"

  url "https://api.github.com/repos/ahmedelgabri/MyCal/releases/assets/776669926",
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
