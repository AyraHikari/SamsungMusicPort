.class public final Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion$request$2;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/regional/spotify/network/response/GetChartResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion$request$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion$request$2;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/regional/spotify/network/response/GetChartResponse;)V
    .locals 8

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNext"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetChartResponse;->getEntries()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntryPaging;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntryPaging;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 50
    check-cast v0, Ljava/lang/Iterable;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 70
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntry;

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_0

    .line 50
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_2
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 72
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntry;

    .line 51
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion$request$2;->b:Ljava/util/ArrayList;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "name"

    const-string v6, "item"

    .line 52
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntry;->getTrack()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;

    move-result-object v6

    const-string v7, "item.track"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "image_url"

    .line 53
    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntry;->getTrack()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;

    move-result-object v6

    const-string v7, "item.track"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getAlbum()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;

    move-result-object v6

    const-string v7, "item.track.album"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getImages()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "item.track.album.images[0]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyImage;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "uri"

    .line 54
    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntry;->getTrack()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;

    move-result-object v6

    const-string v7, "item.track"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getAlbum()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;

    move-result-object v6

    const-string v7, "item.track.album"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "uri_type"

    .line 55
    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntry;->getTrack()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;

    move-result-object v6

    const-string v7, "item.track"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getAlbum()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;

    move-result-object v6

    const-string v7, "item.track.album"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "album_id"

    .line 56
    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntry;->getTrack()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;

    move-result-object v6

    const-string v7, "item.track"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getAlbum()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;

    move-result-object v6

    const-string v7, "item.track.album"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "album_name"

    .line 57
    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyChartEntry;->getTrack()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;

    move-result-object v1

    const-string v6, "item.track"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyFullTrack;->getAlbum()Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;

    move-result-object v1

    const-string v6, "item.track.album"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/music/regional/spotify/network/response/SpotifyAlbum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "chart_name"

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/app/music/regional/spotify/network/response/GetChartResponse;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public onComplete()V
    .locals 4

    .line 36
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion$request$2;->a:Landroid/content/Context;

    .line 38
    sget-object v1, Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;->a:Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;->a()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion$request$2;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion$request$2;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/ContentValues;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "values.toArray(arrayOfNulls(values.size))"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Landroid/content/ContentValues;

    .line 37
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/samsung/android/app/music/regional/spotify/network/response/GetChartResponse;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion$request$2;->a(Lcom/samsung/android/app/music/regional/spotify/network/response/GetChartResponse;)V

    return-void
.end method
