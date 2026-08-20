class TmuxAgentPanel < Formula
  desc "Agent-aware tmux pane picker with live coding-agent status"
  homepage "https://github.com/ahmedelgabri/tmux-agent-panel"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.12/tap-0.1.12-darwin-amd64.tar.gz"
      sha256 "ebe47dc10eafad053c3d5275a159491921059cfd4decf37a25e2ce84043c5368"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.12/tap-0.1.12-darwin-arm64.tar.gz"
      sha256 "f43c97dc3f638c89b84be89f08423a8a74468780574f05f4863987ab60bdd049"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.12/tap-0.1.12-linux-amd64.tar.gz"
      sha256 "c28eb303f3343d51ed588c78f3acad34281d4289b2639aa1036c24483b3edb9d"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/tmux-agent-panel/releases/download/v0.1.12/tap-0.1.12-linux-arm64.tar.gz"
      sha256 "1382482eba6f2ac5f039bedee7caf8c8d7efe2cb3d58b158d78eaffe5418fa5d"
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
