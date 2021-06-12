.class final Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$AlbumUpdateHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlbumUpdateHandler"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final edgeProvider:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "looper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edgeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$AlbumUpdateHandler;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$AlbumUpdateHandler;->edgeProvider:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    return-void
.end method

.method private final updateEdge(Landroid/content/Context;Landroid/os/Message;Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Z)V
    .locals 2

    .line 489
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 490
    invoke-static {p3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getCurrentAlbumUri$p(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    .line 491
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_0

    check-cast p2, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.graphics.Bitmap"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p2, 0x0

    .line 492
    :goto_0
    invoke-static {p3, p1, p2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$updateEdgeArtwork(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    const-string p1, "EdgePanel"

    .line 495
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AlbumUpdateHandler() artwork reloaded success = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " bitmap = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 493
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$AlbumUpdateHandler;->edgeProvider:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-static {v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getBuilderManager$p(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "SMUSIC-EdgePanel"

    const-string v0, "AlbumUpdateHandler() RemoteViewBuilder is cleared "

    .line 467
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 470
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "SMUSIC-EdgePanel"

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AlbumUpdateHandler() what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 477
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$AlbumUpdateHandler;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$AlbumUpdateHandler;->edgeProvider:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$AlbumUpdateHandler;->updateEdge(Landroid/content/Context;Landroid/os/Message;Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Z)V

    goto :goto_0

    .line 472
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$AlbumUpdateHandler;->context:Landroid/content/Context;

    .line 474
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$AlbumUpdateHandler;->edgeProvider:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    const/4 v2, 0x1

    .line 471
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$AlbumUpdateHandler;->updateEdge(Landroid/content/Context;Landroid/os/Message;Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
