.class final Lcom/samsung/android/app/music/bixby/v1/converter/ConvertBrowse;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ByGenre"

    const-string v1, "MOVE_TOP_CHART_TAB"

    .line 16
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ByTime"

    const-string v1, "MOVE_TOP_CHART_TAB"

    .line 17
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TopCharts"

    const-string v1, "LAUNCH_ONLINE_CATEGORY"

    .line 19
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Years"

    const-string v1, "LAUNCH_ONLINE_CATEGORY"

    .line 20
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DailyForYou"

    const-string v1, "FIND_ONLINE_PLAYLIST_ID"

    .line 22
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "StationSelectTPO"

    const-string v1, "FIND_ONLINE_PLAYLIST_ID"

    .line 23
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RealtimeChart"

    const-string v1, "LAUNCH_ONLINE_PLAYLIST_DETAILS"

    .line 25
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PlaylistDetails"

    const-string v1, "LAUNCH_ONLINE_PLAYLIST_DETAILS"

    .line 26
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PlayRadio"

    const-string v1, "PLAY_RADIO_ONLINE_PLAYLIST"

    .line 28
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "genreName"

    const-string v0, "genreName"

    .line 30
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "year"

    const-string v0, "year"

    .line 31
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
