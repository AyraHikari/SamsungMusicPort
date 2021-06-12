.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$VORBIS_COMMENT;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FLAC;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_SIZE:I = 0x100000

.field private static final TAG:Ljava/lang/String; = "FlacCommentFinder"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkBounds(I)V
    .locals 3

    const/high16 v0, 0x100000

    if-le v0, p1, :cond_0

    if-lez p1, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested Vorbis comment size argument is abnormal. requested size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convertToIntLittleEndian([B)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 141
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 142
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private findCommentInternal(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_4

    .line 76
    array-length v1, p2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 84
    invoke-direct {p0, p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->readInt([BII)I

    move-result v1

    add-int/2addr v1, v2

    .line 95
    invoke-direct {p0, p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->readInt([BII)I

    move-result v3

    add-int/2addr v1, v2

    :goto_0
    if-lez v3, :cond_3

    .line 99
    invoke-direct {p0, p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->readInt([BII)I

    move-result v4

    add-int/2addr v1, v2

    const-string v5, "UTF-8"

    .line 102
    invoke-direct {p0, p2, v1, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->readString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v1, v4

    .line 108
    invoke-virtual {v5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    :goto_2
    return-object v0
.end method

.method private static getHexString([B)Ljava/lang/String;
    .locals 1

    .line 182
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/utils/Hex;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->getHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parsingHeader([B)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;
    .locals 8

    const/4 v0, 0x0

    .line 148
    aget-byte v1, p1, v0

    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, v1, 0x7f

    .line 152
    array-length v4, p1

    const/4 v0, 0x1

    const/4 v5, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 155
    aget-byte v6, p1, v0

    and-int/lit16 v6, v6, 0xff

    sub-int v7, v4, v0

    sub-int/2addr v7, v3

    mul-int/lit8 v7, v7, 0x8

    shl-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 157
    :cond_1
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;

    invoke-direct {p1, v2, v1, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;-><init>(ZII)V

    return-object p1
.end method

.method private readInt([BII)I
    .locals 2

    .line 126
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->checkBounds(I)V

    .line 127
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 128
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->convertToIntLittleEndian([B)I

    move-result p1

    return p1
.end method

.method private readString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 119
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->checkBounds(I)V

    .line 120
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 121
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, p4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public findVorbisComment(Ljava/io/RandomAccessFile;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    .line 43
    new-array v2, v0, [B

    .line 45
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 46
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->parsingHeader([B)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;

    move-result-object v2

    .line 47
    iget-boolean v3, v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->isLastBlock:Z

    .line 48
    iget v4, v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->blockType:I

    if-ne v4, v0, :cond_0

    .line 49
    iget v0, v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->blockLength:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->checkBounds(I)V

    .line 50
    iget v0, v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->blockLength:I

    new-array v0, v0, [B

    .line 51
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 56
    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->findCommentInternal(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    iget v0, v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->blockLength:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v0

    .line 60
    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->blockLength:I

    if-ge v0, v2, :cond_1

    return-object v1

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public isFlac(Ljava/io/RandomAccessFile;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 32
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x4

    .line 34
    new-array v0, v0, [B

    .line 36
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    const-string p1, "664C6143"

    .line 37
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->getHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
