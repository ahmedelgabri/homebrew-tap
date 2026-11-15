class Ccpeek < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeek"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.3.1/ccpeek-2.3.1-darwin-arm64.tar.gz"
      sha256 "c0591d9aa82630652867cc7dde6343ed16314fa0147f8e952fc3319aa14ba897"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.3.1/ccpeek-2.3.1-darwin-amd64.tar.gz"
      sha256 "8f78f77951bf573f465121741487f9513111d719942f04fd08f63b234c705f1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.3.1/ccpeek-2.3.1-linux-arm64.tar.gz"
      sha256 "33fd285b19e7953c7dabcd25911cd97a84124229f463d2e73a93acc665fa109a"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.3.1/ccpeek-2.3.1-linux-amd64.tar.gz"
      sha256 "db829a65bd2dff621a06503b04249fe0ca46ac2ae0250c0e170b31b1d437ab1f"
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
