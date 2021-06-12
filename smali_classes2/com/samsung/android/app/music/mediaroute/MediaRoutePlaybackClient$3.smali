.class Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Landroid/os/Looper;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 294
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 323
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;I)V

    goto :goto_0

    .line 326
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;I)V

    goto :goto_0

    .line 317
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->g(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Z)Z

    goto :goto_0

    .line 314
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->c(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Landroid/os/Message;)V

    goto :goto_0

    .line 311
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->f(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V

    goto :goto_0

    .line 308
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->e(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V

    goto :goto_0

    .line 305
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->d(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V

    goto :goto_0

    .line 302
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->b(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Landroid/os/Message;)V

    goto :goto_0

    .line 299
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->c(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;)V

    goto :goto_0

    .line 296
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient$3;->a:Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;->a(Lcom/samsung/android/app/music/mediaroute/MediaRoutePlaybackClient;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
