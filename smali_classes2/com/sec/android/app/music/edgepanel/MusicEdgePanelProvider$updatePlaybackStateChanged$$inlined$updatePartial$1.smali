.class public final Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->updatePlaybackStateChanged(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic $s$inlined:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field final synthetic this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    iput-object p2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;->$s$inlined:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    iput-object p3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;->$context$inlined:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;->$s$inlined:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-static {v0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$buildPlaybackState(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-static {v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getBuilderManager$p(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updatePlaybackStateChanged$$inlined$updatePartial$1;->$context$inlined:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->b(Landroid/content/Context;)V

    return-void
.end method
