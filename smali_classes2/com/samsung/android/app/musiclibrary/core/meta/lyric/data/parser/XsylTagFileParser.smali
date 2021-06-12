.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/XsylTagFileParser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.source "SourceFile"


# instance fields
.field private final mLyricParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;-><init>()V

    .line 19
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/XsylTagFileParser;->mLyricParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;

    return-void
.end method


# virtual methods
.method protected canParse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/XsylTagFileParser;->mLyricParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->canParse()Z

    move-result v0

    return v0
.end method

.method protected close()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/XsylTagFileParser;->mLyricParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->close()V

    return-void
.end method

.method protected open(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/LyricsMatchers;->XSYL:Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/FileMatcher;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/XsylTagFileParser;->mLyricParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->open(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
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

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/XsylTagFileParser;->mLyricParser:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/Id3XsylTagParser;->parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    move-result-object v0

    return-object v0
.end method
