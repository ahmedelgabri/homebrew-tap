class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.5/tap-0.1.5-darwin-amd64.tar.gz"
      sha256 "b8abda3f7a65b4174669d483eada264bb3235b55a7ae050739ce44a02d3a4934"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.5/tap-0.1.5-darwin-arm64.tar.gz"
      sha256 "e8244bd191d1081b1ec187eafb9ca82cf2c9cc290be3d97f2f932a2a5902c5cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.5/tap-0.1.5-linux-amd64.tar.gz"
      sha256 "c4717b91e7009c1afb9f5795aa7f6ded3880aa2b833cb2d6729537e87062fcb3"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.5/tap-0.1.5-linux-arm64.tar.gz"
      sha256 "23e288173d33bf6884acbb9459750391a0833e476f5a4e023980e1f619a6cfc0"
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
