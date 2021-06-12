.class Lcom/samsung/android/app/music/service/PlayerService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/PlayerService;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/PlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$2;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$2;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->h(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 273
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x6

    .line 272
    invoke-interface {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(I[Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$2;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/PlayerService;->i(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 275
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$2;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/PlayerService;->i(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$2;->a:Lcom/samsung/android/app/music/service/PlayerService;

    .line 276
    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->j(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->c()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$2;->a:Lcom/samsung/android/app/music/service/PlayerService;

    .line 277
    invoke-static {v1}, Lcom/samsung/android/app/music/service/PlayerService;->j(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->d()Z

    move-result v1

    .line 276
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/service/observer/MilkPlayerTimeLogger;->a(ZZ)V

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$2;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/PlayerService;->k(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 281
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$2;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/PlayerService;->k(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$2;->a:Lcom/samsung/android/app/music/service/PlayerService;

    .line 282
    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerService;->j(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->d()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Z)V

    :cond_1
    return-void
.end method
