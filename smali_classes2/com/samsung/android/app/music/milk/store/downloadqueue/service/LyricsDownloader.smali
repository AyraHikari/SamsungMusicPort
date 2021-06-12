.class final Lcom/samsung/android/app/music/milk/store/downloadqueue/service/LyricsDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    .line 23
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;

    move-result-object v0

    const-string v1, "milk"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->getIssuer(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;

    move-result-object v0

    const-string v1, "milk"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;

    aput-object v4, v2, v3

    .line 26
    invoke-static {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->obtain(Landroid/content/Context;[Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader;

    invoke-direct {v3}, Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader;-><init>()V

    .line 27
    invoke-static {p0}, Lcom/samsung/android/app/music/util/DiskUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuerManager;->createIssuer(Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;

    move-result-object v0

    .line 29
    :cond_0
    new-instance p0, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/LyricsDownloader$1;

    invoke-direct {p0, p3, p4}, Lcom/samsung/android/app/music/milk/store/downloadqueue/service/LyricsDownloader$1;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer;->issueLyrics(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;)V

    return-void
.end method
