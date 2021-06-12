.class public final Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateArtwork$$inlined$updatePartial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->updateArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $artwork$inlined:Landroid/graphics/Bitmap;

.field final synthetic $context$inlined:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateArtwork$$inlined$updatePartial$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    iput-object p2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateArtwork$$inlined$updatePartial$1;->$context$inlined:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateArtwork$$inlined$updatePartial$1;->$artwork$inlined:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateArtwork$$inlined$updatePartial$1;->this$0:Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    iget-object v1, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateArtwork$$inlined$updatePartial$1;->$context$inlined:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider$updateArtwork$$inlined$updatePartial$1;->$artwork$inlined:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;->access$updateEdgeArtwork(Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void
.end method
