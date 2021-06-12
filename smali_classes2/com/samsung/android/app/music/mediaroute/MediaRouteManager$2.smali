.class Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Landroid/os/Looper;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->l(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)V

    .line 354
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 380
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->o(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Landroid/support/v7/media/MediaRouter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->p(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->o(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Landroid/support/v7/media/MediaRouter;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteDiscovery;->a(Landroid/support/v7/media/MediaRouter;Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->o(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    goto :goto_0

    .line 374
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->o(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Landroid/support/v7/media/MediaRouter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter;->unselect(I)V

    goto :goto_0

    .line 366
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->o(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)Landroid/support/v7/media/MediaRouter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->a(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->m(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)V

    goto :goto_0

    .line 359
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "SMUSIC-SV-PlayerCast"

    const-string v0, "Keep to discovery for receiving selected router changes."

    .line 360
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 363
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->n(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)V

    goto :goto_0

    .line 356
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager$2;->a:Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;->m(Lcom/samsung/android/app/music/mediaroute/MediaRouteManager;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
