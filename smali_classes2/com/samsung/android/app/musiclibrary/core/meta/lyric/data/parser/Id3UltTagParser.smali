.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ENCODE_CHN:Ljava/lang/String; = "GBK"

.field private static final ENCODE_EUC_KR:Ljava/lang/String; = "EUC-KR"

.field private static final ENCODE_JPN:Ljava/lang/String; = "SHIFT-JIS"

.field private static final ENCODE_UNICODE_BIG_ENDIAN:Ljava/lang/String; = "UTF-16BE"

.field private static final ENCODE_UNICODE_LITTLE_ENDIAN:Ljava/lang/String; = "UTF-16LE"

.field private static final MARK_NULL:Ljava/lang/String; = "0000"

.field private static final ORDER_MARK_UNICODE_BIG_ENDIAN:Ljava/lang/String; = "FEFF"

.field private static final ORDER_MARK_UNICODE_LITTLE_ENDIAN:Ljava/lang/String; = "FFFE"

.field private static final TAG:Ljava/lang/String; = "LyricsParser"


# instance fields
.field private final mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;

.field private mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;-><init>()V

    .line 64
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    return-void
.end method

.method private static getHexString(B)Ljava/lang/String;
    .locals 1

    .line 293
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/utils/Hex;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/utils/Hex;->getHexString(B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHexString([B)Ljava/lang/String;
    .locals 1

    .line 297
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

    .line 301
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static getStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 305
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 307
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 310
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    .line 311
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 315
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 305
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    move-object v4, p1

    move-object p1, p0

    move-object p0, v4

    :goto_1
    if-eqz p1, :cond_1

    .line 315
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :goto_2
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    const-string p1, "LyricsParser"

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStringWithNewLine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private isDescripto([B)Z
    .locals 3

    const-string v0, "LyricsParser"

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isDescripto"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FFFE"

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FEFF"

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isKiesLyric([B)Z
    .locals 9

    const-string v0, "LyricsParser"

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isKiesLyric"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    array-length v0, p1

    const/16 v1, 0x5d

    const/4 v2, 0x2

    const/16 v3, 0x5b

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v0, v4, :cond_0

    .line 259
    aget-byte v7, p1, v5

    if-nez v7, :cond_0

    aget-byte v7, p1, v6

    if-ne v7, v3, :cond_0

    aget-byte v7, p1, v2

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_0

    const/4 v7, 0x3

    aget-byte v7, p1, v7

    const/16 v8, 0x5f

    if-ne v7, v8, :cond_0

    const/4 v7, 0x4

    aget-byte v7, p1, v7

    const/16 v8, 0x43

    if-ne v7, v8, :cond_0

    const/4 v7, 0x5

    aget-byte v7, p1, v7

    const/16 v8, 0x49

    if-ne v7, v8, :cond_0

    const/4 v7, 0x6

    aget-byte v7, p1, v7

    const/16 v8, 0x54

    if-ne v7, v8, :cond_0

    const/4 v7, 0x7

    aget-byte v7, p1, v7

    const/16 v8, 0x59

    if-ne v7, v8, :cond_0

    aget-byte v4, p1, v4

    if-ne v4, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v7, 0x10

    if-le v0, v7, :cond_4

    :try_start_0
    const-string v0, "EUC-KR"

    .line 268
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 270
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v3, :cond_1

    if-lez v0, :cond_1

    if-ge v3, v0, :cond_1

    sub-int v1, v0, v3

    if-lt v1, v2, :cond_1

    add-int/2addr v0, v6

    :goto_1
    if-ge v0, v7, :cond_1

    .line 274
    aget-byte v1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v5, v4

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return v4
.end method

.method private isNull([B)Z
    .locals 3

    const-string v0, "LyricsParser"

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isNull"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0000"

    .line 212
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private nonUnicodeParsing(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "LyricsParser"

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nonUnicodeParsing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->nonUnicodDescripto:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 223
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->nonUnicodDescripto:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return-object v0

    .line 228
    :cond_0
    new-array p3, p3, [B

    .line 230
    invoke-virtual {p1, p3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 233
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->isKiesLyric([B)Z

    move-result p1

    if-nez p1, :cond_3

    .line 234
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->r_:Z

    if-eqz p1, :cond_1

    const-string p1, "GBK"

    .line 235
    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_1
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->s_:Z

    if-eqz p1, :cond_2

    const-string p1, "SHIFT-JIS"

    .line 237
    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string p1, "EUC-KR"

    .line 239
    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    const-string p1, "LyricsParser"

    .line 243
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Encoding:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->encoding:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Lan:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->language:[B

    .line 244
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n non-unicode descripto:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->nonUnicodDescripto:[B

    .line 245
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 243
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "LyricsParser"

    .line 246
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n Lyric: \n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private unicodeParsing(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "LyricsParser"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unicodeParsing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 148
    new-array v0, v0, [B

    .line 149
    array-length v1, v0

    .line 150
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sub-int/2addr p3, v1

    const-string v2, "LyricsParser"

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " tempDescripto : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->isDescripto([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->unicodDescripto:[B

    goto :goto_0

    .line 159
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->isNull([B)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p3, v1

    .line 165
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    int-to-long v0, v1

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_2
    const/4 v0, 0x0

    if-gtz p3, :cond_3

    return-object v0

    .line 173
    :cond_3
    new-array p3, p3, [B

    .line 175
    invoke-virtual {p1, p3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 183
    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->unicodDescripto:[B

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object p1

    const-string v1, "FFFE"

    .line 184
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "UTF-16LE"

    .line 185
    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v1, "FEFF"

    .line 186
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "UTF-16BE"

    .line 187
    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getStringWithNewLine([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_1
    const-string p1, "LyricsParser"

    .line 190
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Encoding:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->encoding:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    .line 191
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Lan:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->language:[B

    .line 192
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n unicode descripto:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->unicodDescripto:[B

    .line 193
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 190
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "LyricsParser"

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n Lyric: \n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected canParse()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-string v2, "ULT"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->findTag(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

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

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 139
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    throw v1

    :catch_0
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method

.method protected open(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->close()V

    .line 79
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method protected parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mID3TagFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    const-string v2, "ULT"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder;->findTag(Ljava/io/RandomAccessFile;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    if-nez v0, :cond_1

    .line 101
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object v0

    :cond_1
    const-string v0, "LyricsParser"

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " parsingLyric frame size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->getTagSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->getOffset()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 109
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$1;)V

    .line 111
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->encoding:[B

    .line 112
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->language:[B

    .line 113
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 114
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->read([B)I

    const-string v4, "01"

    .line 117
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    .line 119
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->getTagSize()I

    move-result v4

    array-length v2, v2

    array-length v3, v3

    add-int/2addr v2, v3

    sub-int/2addr v4, v2

    .line 118
    invoke-direct {p0, v1, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->unicodeParsing(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v4, "00"

    .line 120
    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;->encoding:[B

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->getHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->mUsltTagFrame:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;

    .line 122
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3TagFinder$ID3TagFields;->getTagSize()I

    move-result v4

    array-length v2, v2

    array-length v3, v3

    add-int/2addr v2, v3

    sub-int/2addr v4, v2

    .line 121
    invoke-direct {p0, v1, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser;->nonUnicodeParsing(Ljava/io/RandomAccessFile;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3UltTagParser$ID3TagULT;I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 125
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 127
    :cond_4
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object v0
.end method
