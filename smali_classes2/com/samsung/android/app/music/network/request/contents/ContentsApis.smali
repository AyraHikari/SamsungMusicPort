.class public Lcom/samsung/android/app/music/network/request/contents/ContentsApis;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailModel;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 42
    invoke-static {}, Lcom/samsung/android/app/music/network/rx/RetrofitRxFunctions;->a()Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailRelatedArtistsModel;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$5;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 86
    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$2;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/AlbumImageUrlsModel;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$11;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a()Lio/reactivex/functions/Function;
    .locals 1

    .line 33
    invoke-static {}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->b()Lio/reactivex/functions/Function;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$7;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailMusicVideosModel;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$6;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 100
    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailTracksModel;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$3;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static b()Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/functions/Function<",
            "Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;",
            "Lcom/samsung/android/app/music/model/contents/AlbumDetailModel;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$8;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$8;-><init>()V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/TrackDetailModel;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$12;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$12;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 189
    invoke-static {}, Lcom/samsung/android/app/music/network/rx/RetrofitRxFunctions;->a()Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/AlbumDetailTracksModel;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$9;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/ArtistDetailAlbumsModel;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$4;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 72
    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/TrackLyricsModel;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$13;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$13;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/contents/AlbumDetailTracksModel;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$10;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 159
    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milklyric/LyricResponse;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$14;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis$14;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
