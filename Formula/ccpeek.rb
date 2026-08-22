class Ccpeek < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeek"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.0.2/ccpeek-2.0.2-darwin-arm64.tar.gz"
      sha256 "4bdaafceed7d22400af7de38b731a01c967e281f9d14a8b7653d7a437a5b4c40"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.0.2/ccpeek-2.0.2-darwin-amd64.tar.gz"
      sha256 "6f9f1d69842c1f658f59d3e86c07ace6d8fde2b59b60ea278af6304630d85eb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.0.2/ccpeek-2.0.2-linux-arm64.tar.gz"
      sha256 "95b05d38af43b2b9944b5ba8a93126b1470b38f52f74d74bc7a82f2dbeaa5936"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.0.2/ccpeek-2.0.2-linux-amd64.tar.gz"
      sha256 "7871a05e05fc0d55170237820eae4acbeb8184cc6bb2e4eb2cd17f3c53124573"
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
