.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$FieldsBytes;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-LyricsParser"

.field private static final TAG:Ljava/lang/String; = "LyricsParser"


# instance fields
.field private final mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;

.field private mXyslTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;-><init>()V

    .line 65
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    return-void
.end method

.method private getCharset(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;)Ljava/nio/charset/Charset;
    .locals 3

    .line 219
    iget-byte v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->encoding:B

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    const-string p1, "UTF-8"

    .line 220
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown encoding : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->encoding:B

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSyncSafeInt(Ljava/io/RandomAccessFile;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x4

    .line 202
    new-array v0, v0, [B

    .line 203
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 204
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->getSyncSafeInt([B)I

    move-result p1

    return p1
.end method

.method private getSyncSafeInt([B)I
    .locals 5

    .line 208
    array-length v0, p1

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_0

    .line 212
    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, 0x7f

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v4, v4, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private makeLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 167
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->entryCount:I

    if-nez v0, :cond_0

    .line 168
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object p1

    .line 171
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->entryCount:I

    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    const/4 v1, 0x0

    .line 172
    :goto_0
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->entryCount:I

    if-ge v1, v2, :cond_1

    .line 173
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->contents:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;

    aget-object v2, v2, v1

    .line 174
    iget v3, v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;->time:I

    int-to-long v3, v3

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;->text:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->makeLyricLine(JLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 176
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyricsImpl;->makeLyric(Ljava/util/Map;[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    move-result-object p1

    return-object p1
.end method

.method private skipSGR(Ljava/io/RandomAccessFile;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    const-string v1, "LyricsParser"

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SGR : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/utils/Hex;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->getHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x3e

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 189
    :goto_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    const/16 v3, 0x6d

    if-eq v2, v3, :cond_0

    const-string v3, "LyricsParser"

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SGR : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/utils/Hex;

    invoke-virtual {v5, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->getHexString(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    move v0, v2

    goto :goto_1

    .line 195
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x0

    :goto_1
    const-string p1, "LyricsParser"

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SGR : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/utils/Hex;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->getHexString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", skipped : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method protected canParse()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-string v2, "XSYL"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->findTag(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mXyslTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mXyslTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected close()V
    .locals 2

    const/4 v0, 0x0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 161
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    throw v1

    :catch_0
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method

.method protected open(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->close()V

    .line 76
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method protected parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mXyslTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-string v2, "XSYL"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->findTag(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mXyslTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mXyslTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    if-nez v0, :cond_1

    .line 101
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object v0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mXyslTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->getOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 106
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;-><init>()V

    .line 107
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->frameSize:I

    .line 108
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->flags:S

    .line 109
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    iput-byte v2, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->encoding:B

    const/4 v1, 0x3

    .line 111
    new-array v1, v1, [B

    .line 112
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 113
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v3, v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->language:Ljava/lang/String;

    const/16 v1, 0x80

    .line 115
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 117
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    aput-byte v4, v1, v3

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_2
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->mimeType:Ljava/lang/String;

    .line 121
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->getSyncSafeInt(Ljava/io/RandomAccessFile;)I

    move-result v3

    iput v3, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->entryCount:I

    .line 122
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->entryCount:I

    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->contents:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;

    const-string v1, "SMUSIC-LyricsParser"

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Header encoding : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget-byte v4, v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->encoding:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", entry : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget v4, v4, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->entryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->getCharset(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 127
    :goto_1
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->header:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;

    iget v3, v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Header;->entryCount:I

    if-ge v2, v3, :cond_3

    .line 128
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;

    invoke-direct {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;-><init>()V

    .line 129
    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;->contents:[Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;

    aput-object v3, v4, v2

    .line 132
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->getSyncSafeInt(Ljava/io/RandomAccessFile;)I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    .line 133
    iput v4, v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;->length:I

    .line 135
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->getSyncSafeInt(Ljava/io/RandomAccessFile;)I

    move-result v5

    int-to-double v5, v5

    double-to-int v5, v5

    .line 136
    iput v5, v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;->time:I

    .line 139
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->skipSGR(Ljava/io/RandomAccessFile;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 141
    new-array v4, v4, [B

    .line 142
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v5, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 143
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame$Content;->text:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->makeLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser$Frame;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v0

    return-object v0
.end method
