.class public Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const-string v2, "milk"

    const/4 v0, 0x1

    .line 43
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$InternalLyricsParser;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;->obtain(Landroid/content/Context;[Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader;

    invoke-direct {v4}, Lcom/samsung/android/app/music/lyrics/data/loader/MilkLyricsDownloader;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/LyricsParser;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$ILyricsDownloader;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method initRequestFromServer(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;->LOG_TAG:Ljava/lang/String;

    const-string v1, "request lyrics to server !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->sourceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->d(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser$1;-><init>(Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;)V

    .line 75
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected prepareRequestInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;)Z
    .locals 8

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MilkTrack;->a()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "track_id"

    const-string v3, "track_synclyrics_url"

    const-string v4, "track_lyrics_url"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "track_id=?"

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->sourceId:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 56
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "track_synclyrics_url"

    .line 61
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "track_lyrics_url"

    .line 63
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    :cond_1
    iput-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->lyricsUrl:Ljava/lang/String;

    .line 66
    iget-object v2, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareRequestInternal - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;->onRequestPrepared(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 69
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v6

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, p1

    goto :goto_1

    .line 57
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;->initRequestFromServer(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 69
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v6

    .line 49
    :goto_1
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 69
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    throw p1
.end method
