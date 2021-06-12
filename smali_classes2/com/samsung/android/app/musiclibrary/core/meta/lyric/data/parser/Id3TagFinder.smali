.class public Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ENCODE_ID3TAG:Ljava/lang/String; = "ISO-8859-1"

.field private static final ID3_HEADER_IDENTIFIER:Ljava/lang/String; = "494433"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Id3TagFinder"


# instance fields
.field private mAllTagSize:I

.field private mMajorVersion:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToShort([B)I
    .locals 2

    const/4 v0, 0x0

    .line 201
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private static getHexString([B)Ljava/lang/String;
    .locals 1

    .line 205
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/utils/Hex;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->getHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private isId3Tag(Ljava/io/RandomAccessFile;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$1;)V

    const/4 v1, 0x0

    .line 126
    iput-byte v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mMajorVersion:B

    const-wide/16 v2, 0x0

    .line 127
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 129
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->identifier:[B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    const-string v2, "494433"

    .line 130
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->identifier:[B

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->getHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->version:[B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 133
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->flags:[B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 134
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->size:[B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 136
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mAllTagSize:I

    .line 137
    iget-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->size:[B

    array-length p1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 139
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mAllTagSize:I

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->size:[B

    aget-byte v4, v4, v2

    and-int/lit8 v4, v4, 0x7f

    add-int/lit8 v2, v2, 0x1

    sub-int v5, p1, v2

    mul-int/lit8 v5, v5, 0x7

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mAllTagSize:I

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagHeader;->version:[B

    aget-byte p1, p1, v1

    iput-byte p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mMajorVersion:B

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public findTag(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;
    .locals 8

    const/4 v0, 0x0

    .line 159
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->isId3Tag(Ljava/io/RandomAccessFile;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 160
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    .line 161
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    iget-byte v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mMajorVersion:B

    invoke-direct {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;-><init>(I)V

    .line 163
    :goto_0
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 165
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 166
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;)[B

    move-result-object v4

    const-string v5, "ISO-8859-1"

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->getTagSize()I

    move-result v5

    .line 169
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->access$300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 170
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;)[B

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/RandomAccessFile;->read([B)I

    .line 177
    :cond_0
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mAllTagSize:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->mAllTagSize:I

    if-gez v6, :cond_1

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p1

    invoke-static {v3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->access$502(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tag count : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 187
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    int-to-long v4, v5

    add-long/2addr v4, v6

    cmp-long v6, v4, v1

    if-lez v6, :cond_3

    move-wide v4, v1

    .line 188
    :cond_3
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_4
    :goto_1
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v1, "tag count : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 193
    :try_start_2
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->TAG:Ljava/lang/String;

    const-string v1, "findTag"

    invoke-static {p2, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :goto_3
    const/4 p1, 0x0

    return-object p1

    :goto_4
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tag count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method
