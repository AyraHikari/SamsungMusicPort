.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LyricsParser"


# instance fields
.field private final mFlacCommentFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;-><init>()V

    .line 29
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mFlacCommentFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;

    return-void
.end method

.method private parseFlacMeta(Ljava/io/RandomAccessFile;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mFlacCommentFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;

    const-string v1, "LYRICS="

    .line 74
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->findVorbisComment(Ljava/io/RandomAccessFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 76
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 78
    :cond_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object p1
.end method


# virtual methods
.method protected canParse()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mFlacCommentFinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;->isFlac(Ljava/io/RandomAccessFile;)Z

    move-result v0

    return v0
.end method

.method protected close()V
    .locals 2

    const/4 v0, 0x0

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 67
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    throw v1

    :catch_0
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    return-void
.end method

.method protected open(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->close()V

    .line 40
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/io/BufferedRandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method protected parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacTagParser;->parseFlacMeta(Ljava/io/RandomAccessFile;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v0

    return-object v0
.end method
