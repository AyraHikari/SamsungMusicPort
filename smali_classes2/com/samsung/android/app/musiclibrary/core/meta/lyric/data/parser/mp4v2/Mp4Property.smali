.class abstract Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mImplicit:Z

.field private final mName:Ljava/lang/String;

.field private final mParentAtom:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;

.field private final mReadOnly:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;ZZ)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;ZZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;->mParentAtom:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;->mName:Ljava/lang/String;

    .line 22
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;->mReadOnly:Z

    .line 23
    iput-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;->mImplicit:Z

    return-void
.end method


# virtual methods
.method final getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;->mName:Ljava/lang/String;

    return-object v0
.end method

.method final getParentAtom()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;->mParentAtom:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;

    return-object v0
.end method

.method final isImplicit()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;->mImplicit:Z

    return v0
.end method

.method final isReadOnly()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;->mReadOnly:Z

    return v0
.end method

.method final read(Ljava/io/RandomAccessFile;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;->read(Ljava/io/RandomAccessFile;I)V

    return-void
.end method

.method abstract read(Ljava/io/RandomAccessFile;I)V
.end method
