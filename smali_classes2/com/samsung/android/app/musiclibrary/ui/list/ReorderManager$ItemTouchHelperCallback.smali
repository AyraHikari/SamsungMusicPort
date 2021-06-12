.class final Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ItemTouchHelperCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    const-string v0, "ReorderManager"

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearView() - from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->d(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 120
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "viewHolder!!.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3ebd70a4    # 0.37f

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->d(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->g(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback$clearView$$inlined$doOnAnimatorFinished$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback$clearView$$inlined$doOnAnimatorFinished$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;)V

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->f(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getReorderState$musicLibrary_release()Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->f(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ReorderState;->b(I)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->h(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->d(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;->moveItem(II)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->g(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->i(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->g(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->i(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEnabled(Z)V

    .line 136
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F
    .locals 0

    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 69
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 70
    invoke-static {p1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->c(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result p2

    invoke-static {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I
    .locals 0

    if-lez p3, :cond_0

    const/16 p1, 0x14

    goto :goto_0

    :cond_0
    const/16 p1, -0x14

    :goto_0
    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 5

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p3, :cond_1

    .line 82
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_7

    if-nez p2, :cond_2

    .line 83
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    return v0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->d(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)V

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->b(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;I)V

    const-string p3, "ReorderManager"

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMove() - from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result p2

    const/4 p3, 0x1

    if-ge p1, p2, :cond_5

    .line 93
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result p2

    :goto_0
    if-ge p1, p2, :cond_6

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->f(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->moveItem(II)V

    move p1, v1

    goto :goto_0

    .line 97
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->e(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)I

    move-result p2

    add-int/2addr p2, p3

    if-lt p1, p2, :cond_6

    .line 98
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$ItemTouchHelperCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;->f(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->moveItem(II)V

    if-eq p1, p2, :cond_6

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_6
    return p3

    :cond_7
    const-string p1, "ReorderManager"

    const-string p2, "onMove() - Invalid item id of target."

    .line 103
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    const-string v0, "ReorderManager"

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectedChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    .line 111
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "viewHolder!!.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const v1, 0x3ebd70a4    # 0.37f

    cmpg-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 115
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
