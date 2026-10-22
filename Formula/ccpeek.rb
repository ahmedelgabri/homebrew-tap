class Ccpeek < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeek"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.3.0/ccpeek-2.3.0-darwin-arm64.tar.gz"
      sha256 "7a3bc8af7b30edb475b9bf612dd5fb1af59352e5515672e4338f68431dfb4f1e"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.3.0/ccpeek-2.3.0-darwin-amd64.tar.gz"
      sha256 "5992368c86bbeadff1be998fbf95b3705b249fde42b995e747ee160681306d90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.3.0/ccpeek-2.3.0-linux-arm64.tar.gz"
      sha256 "daa3985e6c77c4ac9c4295f906c541136b57dd0964943ccddb13bc365e7847cd"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.3.0/ccpeek-2.3.0-linux-amd64.tar.gz"
      sha256 "a44f4d1183d4ab1afc9f21e906bff14cc4cc1cec3a18be43621a1debd0fde836"
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
