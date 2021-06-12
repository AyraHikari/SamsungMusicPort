.class public final Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private c:Landroid/support/v7/media/MediaRouter;

.field private d:Landroid/media/VolumeProvider;

.field private e:I

.field private final f:Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;

.field private final g:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;

.field private final h:Landroid/support/v7/media/MediaRouteSelector;

.field private i:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Z

.field private o:Landroid/support/v7/media/MediaRouter$Callback;

.field private final p:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->e:I

    .line 72
    new-instance v0, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    const-string v1, "com.samsung.android.continuity.CATEGORY_CAST/com.sec.android.app.music///CONNECTIVITY_WIFI"

    .line 75
    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->h:Landroid/support/v7/media/MediaRouteSelector;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->m:I

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->n:Z

    .line 224
    new-instance v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;-><init>(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->o:Landroid/support/v7/media/MediaRouter$Callback;

    .line 349
    new-instance v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;-><init>(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->p:Landroid/os/Handler;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 93
    new-instance p1, Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;

    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->h:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->o:Landroid/support/v7/media/MediaRouter$Callback;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;-><init>(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->f:Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;

    .line 94
    iput-object p3, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->g:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I
    .locals 2

    .line 29
    iget v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->m:I

    return v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->e:I

    return p1
.end method

.method private a(I)V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolumeInternal: currentVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->d:Landroid/media/VolumeProvider;

    invoke-virtual {v0, p1}, Landroid/media/VolumeProvider;->setCurrentVolume(I)V

    .line 210
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 211
    iput v1, v0, Landroid/os/Message;->what:I

    .line 212
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 213
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->p:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->p:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Landroid/media/VolumeProvider;I)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->d:Landroid/media/VolumeProvider;

    .line 204
    iput p2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->e:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/media/VolumeProvider;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Landroid/media/VolumeProvider;I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5

    .line 342
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 343
    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->e:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 344
    iget-object p2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->b:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider$MediaRouteColumns;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 345
    invoke-static {p2, v1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .param p1    # Landroid/support/v7/media/MediaRouter$RouteInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->i:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->i:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;Ljava/util/List;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;)Z"
        }
    .end annotation

    .line 411
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 412
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check router: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Select router"

    .line 415
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Ljava/lang/String;)V

    .line 416
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method private b(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .param p1    # Landroid/support/v7/media/MediaRouter$RouteInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->h:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->m:I

    return p0
.end method

.method private c(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 220
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->l:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerCast"

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RouteManager> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/support/v7/media/MediaRouter$RouteInfo;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->i:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object p1
.end method

.method static synthetic d(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->g:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;

    return-object p0
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->i:Landroid/support/v7/media/MediaRouter$RouteInfo;

    const/4 v1, -0x1

    .line 147
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Landroid/media/VolumeProvider;I)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c:Landroid/support/v7/media/MediaRouter;

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c:Landroid/support/v7/media/MediaRouter;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->f()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I
    .locals 2

    .line 29
    iget v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->m:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->m:I

    return v0
.end method

.method private f()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const/4 v1, 0x0

    .line 337
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->onCustomEvent(ILjava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a()V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->e:I

    return p0
.end method

.method private g()V
    .locals 2

    const-string v0, "SMUSIC-SV-PlayerCast"

    const-string v1, "start discovery."

    .line 393
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 394
    iput-boolean v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->j:Z

    .line 395
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->f:Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;

    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;->a(Landroid/support/v7/media/MediaRouter;)V

    return-void
.end method

.method static synthetic h(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I
    .locals 2

    .line 29
    iget v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->e:I

    return v0
.end method

.method private h()V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerCast"

    const-string v1, "stop discovery."

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->m:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 401
    iput v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->m:I

    .line 402
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->g:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;

    iget v2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->m:I

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;->a(I)V

    .line 404
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->j:Z

    .line 405
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->f:Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;

    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;->b(Landroid/support/v7/media/MediaRouter;)V

    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/mediaroute/MediaRouteContentProvider;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 407
    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static synthetic i(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I
    .locals 2

    .line 29
    iget v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->e:I

    return v0
.end method

.method static synthetic j(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->k:Z

    return p0
.end method

.method static synthetic k(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Landroid/media/VolumeProvider;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->d:Landroid/media/VolumeProvider;

    return-object p0
.end method

.method static synthetic l(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->e()V

    return-void
.end method

.method static synthetic m(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->g()V

    return-void
.end method

.method static synthetic n(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->h()V

    return-void
.end method

.method static synthetic o(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Landroid/support/v7/media/MediaRouter;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c:Landroid/support/v7/media/MediaRouter;

    return-object p0
.end method

.method static synthetic p(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->f:Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "disconnectMediaRoute"

    .line 118
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->i:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Ljava/lang/String;Z)V

    .line 124
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->d()V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->g:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;

    invoke-interface {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;->a()V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->p:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->i:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->i:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "selectMediaRoute: requested router was already selected."

    .line 152
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectMediaRoute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 157
    iput v1, v0, Landroid/os/Message;->what:I

    .line 158
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->p:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->p:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->j:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->g:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;

    iget v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->m:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$OnMediaRouteResponse;->a(I)V

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 103
    iput-boolean v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->k:Z

    .line 105
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->p:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->p:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->i:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->i:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "transferMediaRoute: requested router was already selected."

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Ljava/lang/String;)V

    return-void

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transferMediaRoute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 171
    iput v1, v0, Landroid/os/Message;->what:I

    .line 172
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 173
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->p:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->p:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->k:Z

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->p:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->p:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->i:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Landroid/media/VolumeProvider;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->d:Landroid/media/VolumeProvider;

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->n:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->c(Ljava/lang/String;)V

    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->n:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Z)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->f()V

    .line 141
    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b(Z)V

    :goto_0
    return-void
.end method
