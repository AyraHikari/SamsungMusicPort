.class public final Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearcherFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)Lcom/samsung/android/app/music/bixby/v2/executor/search/IMusicSearcher;
    .locals 2

    .line 9
    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;->a()Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;->STORE:Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams$SearchWhere;

    if-ne v0, v1, :cond_0

    .line 10
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/StoreMusicSearcher;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/search/LocalMusicSearcher;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/executor/search/MusicSearchParams;)V

    :goto_0
    return-object v0
.end method
