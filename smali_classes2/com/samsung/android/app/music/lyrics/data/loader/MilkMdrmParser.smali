.class public Lcom/samsung/android/app/music/lyrics/data/loader/MilkMdrmParser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;
.source "SourceFile"


# instance fields
.field private mDrmServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

.field private mOpenContent:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/ParserChain;-><init>()V

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

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/MilkMdrmParser;->mOpenContent:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/MilkMdrmParser;->mOpenContent:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected close()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/MilkMdrmParser;->mDrmServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/MilkMdrmParser;->mDrmServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/data/loader/MilkMdrmParser;->mOpenContent:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/MilkMdrmParser;->mDrmServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    .line 55
    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/MilkMdrmParser;->mOpenContent:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    :cond_0
    return-void
.end method

.method protected open(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isDrmFile(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/lyrics/data/loader/MilkMdrmParser;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    move-result-object v2

    .line 27
    invoke-interface {v2, v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;->open(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/data/loader/MilkMdrmParser;->mOpenContent:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    .line 30
    iput-object v2, p0, Lcom/samsung/android/app/music/lyrics/data/loader/MilkMdrmParser;->mDrmServer:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;

    if-eqz p1, :cond_1

    .line 31
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getErrorCode()I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected parseLyrics()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/MilkMdrmParser;->mOpenContent:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    if-nez v0, :cond_0

    .line 42
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/MilkMdrmParser;->mOpenContent:Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;->getLyrics()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 46
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsImpl;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method
