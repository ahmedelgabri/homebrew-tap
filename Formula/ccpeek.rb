class Ccpeek < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeek"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.2.0/ccpeek-2.2.0-darwin-arm64.tar.gz"
      sha256 "b4bafda9bb2c20e85745c472819f11b0aeca938fe702eac86630890993b5ad57"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.2.0/ccpeek-2.2.0-darwin-amd64.tar.gz"
      sha256 "185abd6363bb1b7bb028689021f1e20513bee10b0ec04cafb0985e6251540f1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.2.0/ccpeek-2.2.0-linux-arm64.tar.gz"
      sha256 "9bd531b742825ae10a0a9af2f3f05a35124fc1a2dd16c101fdef4ba6212adf04"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.2.0/ccpeek-2.2.0-linux-amd64.tar.gz"
      sha256 "36fe8f94f9b837f26a540087f05a8f10653400b7029dd4e565ba259cecb867a0"
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
