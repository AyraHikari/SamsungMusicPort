.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4UdtaAtom;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Mp4UdtaAtom"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;)V
    .locals 2

    const-string v0, "udta"

    .line 126
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;-><init>(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V

    .line 127
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;

    const-string p2, "meta"

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4UdtaAtom;->addExpectedChild(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;)V

    return-void
.end method
