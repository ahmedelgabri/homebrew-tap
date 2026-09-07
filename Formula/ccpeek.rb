class Ccpeek < Formula
  desc "Explore your Claude Code history"
  homepage "https://github.com/ahmedelgabri/ccpeek"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.1.0/ccpeek-2.1.0-darwin-arm64.tar.gz"
      sha256 "b3ca8dfd09e46e1dfa9fe5f90647a4ea716c2f37a809cd62770251b68fb3674b"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.1.0/ccpeek-2.1.0-darwin-amd64.tar.gz"
      sha256 "c5e90d453949b4a378a794414c8409d04fbab24b56060f2d28822943a3c6148b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.1.0/ccpeek-2.1.0-linux-arm64.tar.gz"
      sha256 "f3656506c39ccf252462c679fce8391845f43146b155cf708f3848fc626ccfa1"
    end
    on_intel do
      url "https://github.com/ahmedelgabri/ccpeek/releases/download/v2.1.0/ccpeek-2.1.0-linux-amd64.tar.gz"
      sha256 "7e60a4c189ca96fcbd9c34381d19f05c203d446b3647d6c128df6d2dc40d6847"
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
