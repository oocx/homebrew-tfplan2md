class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.24.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.24.0/tfplan2md_1.24.0_macos-arm64.tar.gz"
      sha256 "82880951ef99d00a2c319ab4dac2ee3bd490ea058f565c86950d9bbe5d9dea1c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.24.0/tfplan2md_1.24.0_linux-x64.tar.gz"
      sha256 "ab824ba06c9b2ef650d2df10e9048a547282134584cbcc91a898723f273486d7"
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
