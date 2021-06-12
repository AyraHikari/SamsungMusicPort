.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4StandardAtom;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Mp4StandardAtom"
.end annotation


# direct methods
.method constructor <init>(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V
    .locals 1

    .line 191
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;-><init>(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V

    const-string p1, "ilst"

    .line 193
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 194
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;

    const-string p3, "\ufffdlyr"

    invoke-direct {p1, p3, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4StandardAtom;->addExpectedChild(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;)V

    goto :goto_0

    :cond_0
    const-string p1, "meta"

    .line 195
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 197
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4Int8Property;

    const-string p2, "version"

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4Int8Property;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4StandardAtom;->addProperty(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;)V

    .line 198
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4Int24Property;

    const-string p2, "flags"

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4Int24Property;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4StandardAtom;->addProperty(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;)V

    .line 200
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;

    const-string p2, "hdlr"

    invoke-direct {p1, p2, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4StandardAtom;->addExpectedChild(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;)V

    .line 201
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;

    const-string p2, "ilst"

    invoke-direct {p1, p2, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4StandardAtom;->addExpectedChild(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;)V

    goto :goto_0

    :cond_1
    const-string p1, "moov"

    .line 202
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 203
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;

    const-string p3, "mvhd"

    invoke-direct {p1, p3, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4StandardAtom;->addExpectedChild(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;)V

    .line 204
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;

    const-string p3, "udta"

    invoke-direct {p1, p3, p2, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4StandardAtom;->addExpectedChild(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;)V

    :cond_2
    :goto_0
    return-void
.end method
