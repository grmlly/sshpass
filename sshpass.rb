{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 class Sshpass < Formula\
  desc "Non-interactive ssh password authentication"\
  homepage "https://sourceforge.net/projects/sshpass/"\
  url "https://sourceforge.net/projects/sshpass/files/sshpass/1.08/sshpass-1.08.tar.gz"\
  sha256 "9ed3b73a6e0b34a372c478b5e9852cc5a43714b39a6f190de1d5bc83d13edc19"\
\
  def install\
    system "./configure", "--disable-debug",\
                          "--disable-dependency-tracking",\
                          "--prefix=#\{prefix\}"\
    system "make", "install"\
  end\
\
  test do\
    system "#\{bin\}/sshpass", "-V"\
  end\
end\
}