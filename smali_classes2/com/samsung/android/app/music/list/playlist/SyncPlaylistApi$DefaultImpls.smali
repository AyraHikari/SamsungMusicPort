.class public final Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic addPlaylistTracks$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;ILjava/lang/Object;)Lretrofit2/Call;
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "/usm/user/playlist/{playlistId}/tracks"
    .end annotation

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    .line 87
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->addPlaylistTracks(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addPlaylistTracks"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic createPlaylist$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "/usm/user/playlist"
    .end annotation

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, ""

    .line 52
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->createPlaylist(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createPlaylist"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic deletePlaylists$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lretrofit2/http/HTTP;
        a = "DELETE"
        b = "/usm/user/playlists"
        c = true
    .end annotation

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;->getPlaylists()Ljava/util/List;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    const-string p2, "@"

    .line 70
    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 71
    sget-object p2, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$deletePlaylists$1;->INSTANCE:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$deletePlaylists$1;

    move-object v6, p2

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    .line 69
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->deletePlaylists(Lcom/samsung/android/app/music/list/playlist/DeletePlaylistRequest;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: deletePlaylists"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getPlaylistTracks$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lretrofit2/Call;
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "/usm/user/playlist/{playlistId}/tracks"
    .end annotation

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, ""

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 96
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->getPlaylistTracks(Ljava/lang/String;Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    .line 0
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getPlaylistTracks"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getPlaylists$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Ljava/lang/String;ILjava/lang/Object;)Lretrofit2/Call;
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "/usm/user/playlists"
    .end annotation

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 57
    :cond_0
    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->getPlaylists(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getPlaylists"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic syncUpPlaylist$default(Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;Ljava/lang/String;Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;IILjava/lang/Object;)Lretrofit2/Call;
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        a = "/usm/user/playlist/{playlistId}/sync"
    .end annotation

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 79
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->syncUpPlaylist(Ljava/lang/String;Lcom/samsung/android/app/music/list/playlist/SyncUpRequest;I)Lretrofit2/Call;

    move-result-object p0

    return-object p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: syncUpPlaylist"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
