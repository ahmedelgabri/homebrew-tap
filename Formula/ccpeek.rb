class Ccpeek < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeek"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.3.2/ccpeek-2.3.2-darwin-arm64.tar.gz"
      sha256 "bc6a8f6851d65f3dae3fbd73c471b62188ee5ebcf8d6b1d5dc4fdbf114cd43f2"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.3.2/ccpeek-2.3.2-darwin-amd64.tar.gz"
      sha256 "e198f3f285b6f0ac7ce00221e9ad00738907bb1aefa030d68d8e4c2e03fffa5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.3.2/ccpeek-2.3.2-linux-arm64.tar.gz"
      sha256 "ab27484c581f8c2c0763bf5ec1586538f0e8591180dd6edf622619232879e677"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.3.2/ccpeek-2.3.2-linux-amd64.tar.gz"
      sha256 "4e406ab46893f16a10a766c29a4728dc838f0130d3b93075ad1fd149cd1638d1"
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
