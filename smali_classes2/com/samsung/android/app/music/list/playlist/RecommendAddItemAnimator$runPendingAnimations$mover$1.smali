.class final Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$mover$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $moves:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$mover$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$mover$1;->$moves:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$mover$1;->$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;

    .line 66
    iget-object v2, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$mover$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    .line 67
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->getHolder()Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->getFromX()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->getFromY()I

    move-result v5

    .line 68
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->getToX()I

    move-result v6

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$MoveInfo;->getToY()I

    move-result v7

    .line 66
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->access$animateMoveImpl(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$mover$1;->$moves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$mover$1;->this$0:Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->access$getMovesList$p(Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator$runPendingAnimations$mover$1;->$moves:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
