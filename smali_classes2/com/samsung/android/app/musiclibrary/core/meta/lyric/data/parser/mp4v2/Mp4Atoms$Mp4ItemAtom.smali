.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4ItemAtom;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Mp4ItemAtom"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V
    .locals 1

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;-><init>(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V

    .line 183
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;

    const-string p2, "mean"

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4ItemAtom;->addExpectedChild(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;)V

    .line 184
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;

    const-string p2, "name"

    invoke-direct {p1, p2, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4ItemAtom;->addExpectedChild(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;)V

    .line 185
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;

    const-string p2, "data"

    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4ItemAtom;->addExpectedChild(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;)V

    return-void
.end method
