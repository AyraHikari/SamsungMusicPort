.class public final Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onUpdate$$inlined$update$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V
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

    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onUpdate$$inlined$update$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    iput-object p2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onUpdate$$inlined$update$1;->$context$inlined:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onUpdate$$inlined$update$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onUpdate$$inlined$update$1;->$context$inlined:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$reloadQueue(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;)V

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onUpdate$$inlined$update$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-static {v0}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$getBuilderManager$p(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;)Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$onUpdate$$inlined$update$1;->$context$inlined:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/remoteview/edge/EdgePanelRemoteViewBuilderManager;->b(Landroid/content/Context;)V

    return-void
.end method
