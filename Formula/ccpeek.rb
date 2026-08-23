class Ccpeek < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeek"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.0.3/ccpeek-2.0.3-darwin-arm64.tar.gz"
      sha256 "15694c2070e38abe98739da04a1f8d75b08c5f320da4a6f4dd98a325a7008632"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.0.3/ccpeek-2.0.3-darwin-amd64.tar.gz"
      sha256 "8ebe5355b07fdc5a8609d1f6f39e81f89dc80067e3007a8e6d4e2faa34bb508f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.0.3/ccpeek-2.0.3-linux-arm64.tar.gz"
      sha256 "44d102cdf5b8c74671af5323fec670ba9f62146b67170bce2a1aaa81b8059805"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.0.3/ccpeek-2.0.3-linux-amd64.tar.gz"
      sha256 "bd6c65955997f2f43a948b81bf822b7b1622fb74cf0852c48549dd633adb7004"
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
