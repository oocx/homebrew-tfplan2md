class Tfplan2md < Formula
  desc "Convert Terraform plan JSON files into human-readable Markdown reports"
  homepage "https://github.com/oocx/tfplan2md"
  license "MIT"
  version "1.47.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.47.0/tfplan2md_1.47.0_macos-arm64.tar.gz"
      sha256 "f1bb90859b42205c0c9e6d2a0f6f211df18b995499ea95db5336406cfaf645e4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.47.0/tfplan2md_1.47.0_linux-x64.tar.gz"
      sha256 "6d463d5b78b22cbbc6dbcb4cfbcad9be9191821993fa841e2cc520b096993ee7"
    elsif Hardware::CPU.arm?
      url "https://github.com/oocx/tfplan2md/releases/download/v1.47.0/tfplan2md_1.47.0_linux-arm64.tar.gz"
      sha256 "be2cc26ff8a76ca31ba1b02b0ea5864bf46613ff33b20769ab64e4a82f0cf08c"
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
