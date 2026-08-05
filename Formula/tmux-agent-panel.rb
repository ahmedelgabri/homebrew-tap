class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.2/tap-0.1.2-darwin-amd64.tar.gz"
      sha256 "e5f8f905e1a94102089f51ee4e0886e2b5ab04f612d2e8d5e1840e6cd37c5ced"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.2/tap-0.1.2-darwin-arm64.tar.gz"
      sha256 "8651f4ba24fd3cb0198f06cfb78d28943cd6297f83cc12109e6f90e2dcf3056c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.2/tap-0.1.2-linux-amd64.tar.gz"
      sha256 "b4a7db6fccb77b2531461d8ba96fdccec714b7dc1d729fb64c9c0df465d021de"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.2/tap-0.1.2-linux-arm64.tar.gz"
      sha256 "02f8799c1bb6378ae001cac5dcecefa2aef09f168bbacb7e469e43e0ba42b90d"
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
