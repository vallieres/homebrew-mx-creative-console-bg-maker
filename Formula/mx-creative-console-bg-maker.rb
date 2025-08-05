class MxCreativeConsoleBgMaker < Formula
  desc "A command-line tool that splits images into a 3x3 grid for the Logitech MX Creative Console"
  homepage "https://github.com/vallieres/mx-creative-console-bg-maker"
  url "https://github.com/vallieres/mx-creative-console-bg-maker/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "your-sha256-hash-here"
  license "MIT"
  
  depends_on "go" => :build
  
  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/ccbm"
  end
  
  test do
    # Test that installation worked - since it requires an image file, just check help
    output = shell_output("#{bin}/ccbm 2>&1", 1)
    assert_match "Usage: imgsplit <image_path>", output
  end
end
