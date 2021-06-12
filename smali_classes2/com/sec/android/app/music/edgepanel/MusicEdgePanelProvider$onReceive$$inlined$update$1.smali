.class public final Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onReceive$$inlined$update$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onReceive$$inlined$update$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    iput-object p2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onReceive$$inlined$update$1;->$context$inlined:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onReceive$$inlined$update$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onReceive$$inlined$update$1;->$context$inlined:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$reloadQueue(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;)V

    const v0, 0x7f100073

    .line 522
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onReceive$$inlined$update$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-static {v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getCurrentAlbumUri$p(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v0

    .line 524
    new-instance v1, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$AlbumUpdateHandler;

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onReceive$$inlined$update$1;->$context$inlined:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onReceive$$inlined$update$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-static {v3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getHandler$p(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$UpdateHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "handler.looper"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onReceive$$inlined$update$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$AlbumUpdateHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)V

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/os/Handler;)V

    return-void
.end method
