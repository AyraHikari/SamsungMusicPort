.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mp4IntProperty"
.end annotation


# instance fields
.field private final mSize:I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x8L
        to = 0x40L
    .end annotation
.end field

.field private mValue:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Property;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;Ljava/lang/String;)V

    .line 26
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;->mSize:I

    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;->mValue:J

    return-wide v0
.end method

.method read(Ljava/io/RandomAccessFile;I)V
    .locals 6

    .line 31
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;->mSize:I

    div-int/lit8 p2, p2, 0x8

    .line 32
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 34
    :try_start_0
    invoke-virtual {p1, v0, v1, p2}, Ljava/io/RandomAccessFile;->read([BII)I

    :goto_0
    if-ge v1, p2, :cond_0

    .line 36
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;->mValue:J

    aget-byte p1, v0, v1

    int-to-long v4, p1

    mul-int/lit8 p1, v1, 0x8

    shl-long/2addr v4, p1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Properties$Mp4IntProperty;->mValue:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
