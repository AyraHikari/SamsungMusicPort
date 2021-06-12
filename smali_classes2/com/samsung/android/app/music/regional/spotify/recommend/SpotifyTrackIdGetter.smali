.class public Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyTrackIdGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/recommend/SeedCpIdGetter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(JJ)Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p0, p0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/samsung/android/app/music/recommend/Seed;)Ljava/lang/String;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/recommend/Seed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    iget-object v0, p2, Lcom/samsung/android/app/music/recommend/Seed;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/samsung/android/app/music/recommend/Seed;->b:Ljava/lang/String;

    iget-object v2, p2, Lcom/samsung/android/app/music/recommend/Seed;->c:Ljava/lang/String;

    .line 23
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v1, v0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    iget-wide v1, v0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->f:J

    const-wide/32 v3, 0x240c8400

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/app/music/regional/spotify/recommend/SpotifyTrackIdGetter;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "SpotifyTrackIdGetter"

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getId. not expired. so don\'t query from server. last updated time - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->f:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v1, "SpotifyTrackIdGetter"

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getId. title - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/samsung/android/app/music/recommend/Seed;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cache exist but id is null. time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->f:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, v0, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom$SpotifyIdCache;->e:Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    const-string v0, "SpotifyTrackIdGetter"

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getId. try to get id using seed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p2, Lcom/samsung/android/app/music/recommend/Seed;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/samsung/android/app/music/recommend/Seed;->c:Ljava/lang/String;

    iget-object v2, p2, Lcom/samsung/android/app/music/recommend/Seed;->b:Ljava/lang/String;

    .line 43
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyIdSearcher;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v4, p2, Lcom/samsung/android/app/music/recommend/Seed;->a:Ljava/lang/String;

    iget-object v5, p2, Lcom/samsung/android/app/music/recommend/Seed;->b:Ljava/lang/String;

    iget-object v6, p2, Lcom/samsung/android/app/music/recommend/Seed;->c:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v3, p1

    move-object v7, v0

    .line 44
    invoke-static/range {v3 .. v9}, Lcom/samsung/android/app/music/regional/spotify/db/SpotifyRoom;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method
