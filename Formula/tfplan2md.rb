class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.38.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.38.0/tfplan2md_1.38.0_macos-arm64.tar.gz"
      sha256 "903dc84663fe34115218f47c31555c6b7be237bd7fe034ca99a073e56bd0a535"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.38.0/tfplan2md_1.38.0_linux-x64.tar.gz"
      sha256 "2ae0a0ff2f792f70ba5933b8b2d247dc2ebe2b9aa5c1fc5b18b1f5796d67ea44"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.38.0/tfplan2md_1.38.0_linux-arm64.tar.gz"
      sha256 "51190dfae1f3abde9e10e2245c65a033290fd0e5323e7140f75a16f8d1c2fec8"
    end
  end

  def install
    bin.install "tfplan2md"
  end

  test do
    system "#{bin}/tfplan2md", "--version"
    system "#{bin}/tfplan2md", "--help"
  end
end
