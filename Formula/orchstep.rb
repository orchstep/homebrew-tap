class Orchstep < Formula
  desc "YAML-first workflow orchestration engine"
  homepage "https://orchstep.dev"
  version "0.2.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orchstep/orchstep/releases/download/v0.2.1/orchstep_0.2.1_darwin_arm64.tar.gz"
      sha256 "69e427d9c4282ab326ce36f75c76ffc3964c763cbe3e19771b78833c300129c7"
    else
      url "https://github.com/orchstep/orchstep/releases/download/v0.2.1/orchstep_0.2.1_darwin_amd64.tar.gz"
      sha256 "64a1785a58bdd5afab495510892615b524a9e26ddecd8f50bd9e5ced62f2e0e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orchstep/orchstep/releases/download/v0.2.1/orchstep_0.2.1_linux_arm64.tar.gz"
      sha256 "8b85d3b68eeb8f9bb9fe6b421424d95e88b7f284b2f7394598b390c09ee50078"
    else
      url "https://github.com/orchstep/orchstep/releases/download/v0.2.1/orchstep_0.2.1_linux_amd64.tar.gz"
      sha256 "759ae03034ae9d4e9ec899f2b82f27385cbbb68af387243eb2874bf7dde9532c"
    end
  end

  def install
    bin.install "orchstep"
  end

  test do
    system "#{bin}/orchstep", "version"
  end
end
