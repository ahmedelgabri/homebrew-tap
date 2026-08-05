class Ccpeek < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeek"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.0.1/ccpeek-2.0.1-darwin-arm64.tar.gz"
      sha256 "5a672e1dff98e1ee8bedf67030bcedd712aea664c5a1425be6ff476209174a5e"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.0.1/ccpeek-2.0.1-darwin-amd64.tar.gz"
      sha256 "7ec5dc8cc20966fb1a9fe96a29f1439a607cba29f442f0ad9f681e15a369b1e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.0.1/ccpeek-2.0.1-linux-arm64.tar.gz"
      sha256 "96cf473ce5719d5f2413f5f01a2f1a015ffd1a26d9853dee1e9240c5eb5eb23e"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.0.1/ccpeek-2.0.1-linux-amd64.tar.gz"
      sha256 "3ba844bdc3a3c81f9ee5afb218b70563e531dd2756e9498ca5be9e3c959907b8"
    end
  end

  def install
    bin.install "ccpeek"
    bash_completion.install "completions/ccpeek.bash" => "ccpeek"
    zsh_completion.install "completions/_ccpeek"
    fish_completion.install "completions/ccpeek.fish"
    man1.install Dir["man/*.1"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccpeek --version")
  end
end
