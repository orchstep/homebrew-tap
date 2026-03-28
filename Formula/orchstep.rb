class Orchstep < Formula
  desc "YAML-first workflow orchestration engine"
  homepage "https://orchstep.dev"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orchstep/orchstep/releases/download/v0.2.0/orchstep_0.2.0_darwin_arm64.tar.gz"
      sha256 "0493c985c36db4eaf581f0b32cb090a9da51d5fa71f49dc11827d32cd31469f9"
    else
      url "https://github.com/orchstep/orchstep/releases/download/v0.2.0/orchstep_0.2.0_darwin_amd64.tar.gz"
      sha256 "cba3057fcdf9da86a10954b2aa78857df00f6d824bd3ee419e341d46312ff058"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orchstep/orchstep/releases/download/v0.2.0/orchstep_0.2.0_linux_arm64.tar.gz"
      sha256 "441349bbd6b5d34797a6e3ca65ec3eacb478720a785a81ad43dca8a7ebf1f3b1"
    else
      url "https://github.com/orchstep/orchstep/releases/download/v0.2.0/orchstep_0.2.0_linux_amd64.tar.gz"
      sha256 "e3756af13054b31e0f1244f830094eb33d0260c870d32740614f24c284119865"
    end
  end

  def install
    bin.install "orchstep"
  end

  test do
    system "#{bin}/orchstep", "version"
  end
end
