.class final Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/v7/media/MediaRouteSelector;

.field private final b:Landroid/support/v7/media/MediaRouter$Callback;


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;->a:Landroid/support/v7/media/MediaRouteSelector;

    .line 15
    iput-object p2, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;->b:Landroid/support/v7/media/MediaRouter$Callback;

    return-void
.end method

.method private a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method


# virtual methods
.method a(Landroid/support/v7/media/MediaRouter;)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;->a:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;->b:Landroid/support/v7/media/MediaRouter$Callback;

    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;->a()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    return-void
.end method

.method a(Landroid/support/v7/media/MediaRouter;Ljava/lang/String;)V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.samsung.android.continuity.CATEGORY_CAST/com.sec.android.app.music///CONNECTIVITY_WIFI///DEVICE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 29
    new-instance v0, Landroid/support/v7/media/MediaRouteSelector$Builder;

    invoke-direct {v0}, Landroid/support/v7/media/MediaRouteSelector$Builder;-><init>()V

    .line 30
    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteSelector$Builder;->addControlCategory(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteSelector$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouteSelector$Builder;->build()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object p2

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;->b:Landroid/support/v7/media/MediaRouter$Callback;

    invoke-direct {p0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;->a()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    return-void
.end method

.method b(Landroid/support/v7/media/MediaRouter;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;->b:Landroid/support/v7/media/MediaRouter$Callback;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    return-void
.end method
