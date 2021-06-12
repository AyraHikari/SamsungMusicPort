.class public final Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;->a:Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/SpotifyContents$Chart;->a()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport$Proxy;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;

    move-result-object v1

    const-string v2, "tracks"

    const-string v3, "regional"

    const-string v4, "us"

    const-string v5, "daily"

    const-string v6, "latest"

    .line 31
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "limit"

    const-string v9, "20"

    .line 32
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    check-cast v7, Ljava/util/Map;

    .line 25
    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyTransport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object v1

    .line 33
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion$request$2;

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/app/music/regional/spotify/network/SpotifyGetChart$Companion$request$2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    check-cast v2, Lio/reactivex/Observer;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
