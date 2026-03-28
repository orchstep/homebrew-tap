class Orchstep < Formula
  desc "YAML-first workflow orchestration engine"
  homepage "https://orchstep.dev"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orchstep/orchstep/releases/download/v0.1.0/orchstep_0.1.0_darwin_arm64.tar.gz"
      sha256 "7d351b590c74de53b78cb78acc3b4fb8b8c25c21012c442592aa1ff9207647c8"
    else
      url "https://github.com/orchstep/orchstep/releases/download/v0.1.0/orchstep_0.1.0_darwin_amd64.tar.gz"
      sha256 "1d44f6c337c60a1c2b2c19a1e6781a6bb304ac4d0650a6ce382900b0cfde17f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orchstep/orchstep/releases/download/v0.1.0/orchstep_0.1.0_linux_arm64.tar.gz"
      sha256 "872bb528aa2205e6147dffbb9016ae5c9df359df04e28d133eb760ceb17b6a30"
    else
      url "https://github.com/orchstep/orchstep/releases/download/v0.1.0/orchstep_0.1.0_linux_amd64.tar.gz"
      sha256 "2c3c50bfdd8dd01dd57b055ae3a523ea4c33037a27d5d7f5efe588dbf8e34cf7"
    end
  end

  def install
    bin.install "orchstep"
  end

  test do
    system "#{bin}/orchstep", "version"
  end
end
