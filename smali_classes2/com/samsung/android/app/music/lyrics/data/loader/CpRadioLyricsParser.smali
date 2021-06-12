.class public final Lcom/samsung/android/app/music/lyrics/data/loader/CpRadioLyricsParser;
.super Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/lyrics/data/loader/CpMilkLyricsParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected prepareRequestInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;)Z
    .locals 9

    .line 32
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->userData:Ljava/lang/Object;

    instance-of v0, v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 36
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->userData:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 37
    invoke-static {v0}, Lcom/samsung/android/app/music/lyrics/LyricsExtra;->getStationId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 39
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->sourceId:Ljava/lang/String;

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/lyrics/data/loader/CpRadioLyricsParser;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 47
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$StationTracks;->a()Landroid/net/Uri;

    move-result-object v4

    const-string v2, "track_synclyrics_url"

    const-string v5, "track_lyrics_url"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "station_id=? AND track_id=?"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    aput-object v0, v7, v1

    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->sourceId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v7, v2

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 55
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "track_synclyrics_url"

    .line 56
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v4, "track_lyrics_url"

    .line 59
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v3, p1

    goto :goto_1

    :cond_2
    move-object v4, v3

    :cond_3
    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_7

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/lyrics/data/loader/CpRadioLyricsParser;->initRequestFromServer(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 68
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v2

    .line 46
    :goto_1
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v0, :cond_6

    if-eqz v3, :cond_5

    .line 68
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {v3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    throw p1

    :cond_7
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 69
    :cond_8
    iput-object v4, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->lyricsUrl:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpRadioLyricsParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareRequestInternal() - lyricsUrl : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request$OnRequestPreparedListener;->onRequestPrepared(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;)V

    return v2

    .line 40
    :cond_9
    :goto_4
    iget-object p2, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpRadioLyricsParser;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "station id("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") or source id("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/AbsCpLyricsParser$Request;->sourceId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is null"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method protected prepareSourceIdInternal(Landroid/content/Context;JLjava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 22
    instance-of p1, p4, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 23
    move-object p1, p4

    check-cast p1, Landroid/os/Bundle;

    .line 24
    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsExtra;->getSourceId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/music/lyrics/data/loader/CpRadioLyricsParser;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepareSourceIdInternal() - user data : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", trackId :  "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
