class GitWt < Formula
  desc "Git custom command that enhances Git's native worktree functionality"
  homepage "https://github.com/ahmedelgabri/git-wt"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ahmedelgabri/git-wt/releases/download/v3.0.0/git-wt-3.0.0-darwin-amd64.tar.gz"
      sha256 "dd54b44148399f4eca08f65c89d64483c7945691cbb999d9d1228ff3e9ef7ff6"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/git-wt/releases/download/v3.0.0/git-wt-3.0.0-darwin-arm64.tar.gz"
      sha256 "59066815cca3ab5c146406435f53a800fb7389fcdba8e84ee5bf034651ed03ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahmedelgabri/git-wt/releases/download/v3.0.0/git-wt-3.0.0-linux-amd64.tar.gz"
      sha256 "2cf1418f131b24c03ccad7084ee8b7b20639273c9f4e1e68c4ce756b5d453d2e"
    end

    on_arm do
      url "https://github.com/ahmedelgabri/git-wt/releases/download/v3.0.0/git-wt-3.0.0-linux-arm64.tar.gz"
      sha256 "a3c620e0d72808787c23f85d917ec8f0128583610cc3acb1644c32e83e8707b8"
    end
  end

  depends_on "git"

  def install
    bin.install "git-wt"
    bash_completion.install "completions/git-wt.bash" => "git-wt"
    zsh_completion.install "completions/_git-wt"
    zsh_completion.install "completions/_git_wt"
    fish_completion.install "completions/git-wt.fish"
    man1.install Dir["man/*.1"]
  end

  test do
    system bin/"git-wt", "--help"
  end
end
