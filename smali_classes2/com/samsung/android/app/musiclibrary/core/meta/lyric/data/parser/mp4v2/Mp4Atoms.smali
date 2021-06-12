.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4StandardAtom;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4ItemAtom;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4UdtaAtom;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4RootAtoms;
    }
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DATA_LYR:Ljava/lang/String; = "\ufffdlyr"

.field private static final FREE:Ljava/lang/String; = "free"

.field public static final FTYP:Ljava/lang/String; = "ftyp"

.field public static final HDLR:Ljava/lang/String; = "hdlr"

.field public static final HINF:Ljava/lang/String; = "hinf"

.field public static final ILST:Ljava/lang/String; = "ilst"

.field private static final MANY:Z = false

.field public static final MEAN:Ljava/lang/String; = "mean"

.field public static final META:Ljava/lang/String; = "meta"

.field public static final MOOV:Ljava/lang/String; = "moov"

.field public static final MVHD:Ljava/lang/String; = "mvhd"

.field public static final NAME:Ljava/lang/String; = "name"

.field private static final ONLY_ONE:Z = true

.field private static final OPTIONAL:Z = false

.field private static final REQUIRED:Z = true

.field private static final SKIP:Ljava/lang/String; = "skip"

.field public static final UDTA:Ljava/lang/String; = "udta"

.field public static final UUID:Ljava/lang/String; = "uuid"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    .locals 2

    if-nez p2, :cond_0

    .line 73
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4RootAtoms;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4RootAtoms;-><init>(Ljava/io/RandomAccessFile;)V

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ilst"

    .line 79
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms;->descendsFrom(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ilst"

    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4ItemAtom;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4ItemAtom;-><init>(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v0, "data"

    .line 82
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4DataAtom;-><init>(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;)V

    return-object p2

    :cond_2
    const-string v0, "udta"

    .line 87
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4UdtaAtom;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4UdtaAtom;-><init>(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;)V

    return-object p2

    .line 90
    :cond_3
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4StandardAtom;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atoms$Mp4StandardAtom;-><init>(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V

    return-object v0
.end method

.method private static descendsFrom(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;->getParentAtom()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;

    move-result-object p0

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static path(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 65
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 68
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
