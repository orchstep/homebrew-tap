class Orchstep < Formula
  desc "YAML-first workflow orchestration engine"
  homepage "https://orchstep.dev"
  version "0.2.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orchstep/orchstep/releases/download/v0.2.2/orchstep_0.2.2_darwin_arm64.tar.gz"
      sha256 "44684cbbf1d9b81a8277b03149b9aeee8e475d29c477d6c05d72f4f672004b5c"
    else
      url "https://github.com/orchstep/orchstep/releases/download/v0.2.2/orchstep_0.2.2_darwin_amd64.tar.gz"
      sha256 "c3dd4cec026c1d13f8efbb7d7c976a07c3045e062331f6c9a29413b0c6e8663a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/orchstep/orchstep/releases/download/v0.2.2/orchstep_0.2.2_linux_arm64.tar.gz"
      sha256 "957cbeafb7f1dfc205f499e270072c05f37e4a6f7de4f25dde47ed73390525a4"
    else
      url "https://github.com/orchstep/orchstep/releases/download/v0.2.2/orchstep_0.2.2_linux_amd64.tar.gz"
      sha256 "eba69fdfd082c0bffef92cb6ab88822fe3071db4cc9ca0000ddd2a715a8e41e3"
    end
  end

  def install
    bin.install "orchstep"
  end

  test do
    system "#{bin}/orchstep", "version"
  end
end
