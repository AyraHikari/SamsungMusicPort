.class Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1$1;
.super Landroid/media/VolumeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;III)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;

    invoke-direct {p0, p2, p3, p4}, Landroid/media/VolumeProvider;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->i(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I

    goto :goto_0

    .line 294
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->h(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I

    .line 302
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->g(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;I)V

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;I)I

    .line 288
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$1;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->g(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;I)V

    return-void
.end method
