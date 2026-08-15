class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.9/tap-0.1.9-darwin-amd64.tar.gz"
      sha256 "b339e76acc52cd39b41b3f509a3f3f6c7a259f3d4a696403798527e37ebfe188"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.9/tap-0.1.9-darwin-arm64.tar.gz"
      sha256 "194bdaf5dfadfd6949e0bf3bf8468f0fbb47bc8d4831a5c4d9cbab820a1a19db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.9/tap-0.1.9-linux-amd64.tar.gz"
      sha256 "e8bb7124c5985ce5ca6579234e23b79f420127c590f1c49c283e2ba1423538ea"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.9/tap-0.1.9-linux-arm64.tar.gz"
      sha256 "12a9daf1f428e31addccff8587fc86b06bbde9f0d1f292b2ddfd963cc79a2064"
    end
  end

  depends_on "tmux"

  def install
    bin.install "tap"
    bash_completion.install "completions/tap.bash" => "tap"
    zsh_completion.install "completions/_tap"
    fish_completion.install "completions/tap.fish"
  end

  test do
    system bin/"tap", "--version"
  end
end
