class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.45.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.45.3/tfplan2md_1.45.3_macos-arm64.tar.gz"
      sha256 "200166d6d6f369835b7536812fdc6b2198e75bf1d9df04c18a80f4b95470fd44"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.45.3/tfplan2md_1.45.3_linux-x64.tar.gz"
      sha256 "823d3eb36541801ead932d6cbdb57607d289444b2cae41a99bf94387a0308d5b"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.45.3/tfplan2md_1.45.3_linux-arm64.tar.gz"
      sha256 "fb1e6cd0dc785e6891cfdba17c24cf397e3365ff4ca5591764603078a9cc38f2"
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
