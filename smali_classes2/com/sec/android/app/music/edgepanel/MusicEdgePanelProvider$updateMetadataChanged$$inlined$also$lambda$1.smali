.class public final Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateMetadataChanged$$inlined$also$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->updateMetadataChanged(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic $m$inlined:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field final synthetic $queueExtra$inlined:Landroid/os/Bundle;

.field final synthetic $s$inlined:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field final synthetic this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateMetadataChanged$$inlined$also$lambda$1;->$queueExtra$inlined:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateMetadataChanged$$inlined$also$lambda$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    iput-object p3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateMetadataChanged$$inlined$also$lambda$1;->$m$inlined:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iput-object p4, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateMetadataChanged$$inlined$also$lambda$1;->$context$inlined:Landroid/content/Context;

    iput-object p5, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateMetadataChanged$$inlined$also$lambda$1;->$s$inlined:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateMetadataChanged$$inlined$also$lambda$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateMetadataChanged$$inlined$also$lambda$1;->$context$inlined:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateMetadataChanged$$inlined$also$lambda$1;->$m$inlined:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iget-object v3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateMetadataChanged$$inlined$also$lambda$1;->$s$inlined:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    iget-object v4, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateMetadataChanged$$inlined$also$lambda$1;->$queueExtra$inlined:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$updateAllEdgeItems(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/os/Bundle;)V

    return-void
.end method
