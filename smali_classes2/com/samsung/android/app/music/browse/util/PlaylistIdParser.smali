.class public Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$JustForYouPlaylists;,
        Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$TopChartPlaylists;,
        Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;
    .locals 3

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "PlaylistIdParser"

    const-string v0, "parse. playlist id is null!!"

    .line 66
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "-"

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v2, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, p0, v0, v1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$1;)V

    return-object v2
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 77
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "PlaylistIdParser"

    const-string v0, "isSimilarPlaylist. info is null"

    .line 79
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->e()Z

    move-result p0

    return p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "PlaylistIdParser"

    const-string v0, "isTopChartPlaylist. info is null"

    .line 88
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->a()Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "PlaylistIdParser"

    const-string v0, "isValidPlaylistId. playlist id is null!!"

    .line 99
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "-"

    .line 102
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 103
    array-length p0, p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
