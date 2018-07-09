class GuardianAgent < Formula
  desc "Guardian Agent: secure ssh-agent forwarding for Mosh and SSH"
  homepage "https://github.com/StanfordSNR/guardian-agent/archive/v0.7.2-beta.tar.gz"
  url "https://github.com/StanfordSNR/guardian-agent/releases/download/v0.7.2-beta/sga_darwin_amd64.tar.gz"
  sha256 "0d757f442c07d771940bd2d4fe946e84fc35eb620a0e681f45dc049fb50a68f5"
  depends_on "autossh"
  depends_on "ssh-askpass"

  def install
    lib.install "sga-env.sh"
    bin.install "sga-guard"
    bin.install "sga-guard-bin"
    bin.install "sga-ssh"
    bin.install "sga-stub"
  end

  def caveats; <<~EOF
    If you would like to use guardian-agent on your mac when connecting to it
    from remote you need to source the library file to set up the shell in
    order to use the binaries provided by guardian-agent.

    source /usr/local/lib/sga-env.sh
    EOF
  end
end
