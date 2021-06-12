.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$8;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$8;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$8;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 8

    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$8;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;IIILjava/lang/Object;)Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;

    move-result-object v0

    .line 516
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$8;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->a()[J

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/PlayUtils$QueueInfo;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/common/PlayUtils;->b(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[JLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$8;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0b00d3

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
