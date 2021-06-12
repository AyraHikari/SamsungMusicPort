.class Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    const/4 p1, -0x1

    .line 309
    iput p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->b:I

    .line 311
    iput p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->c:I

    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 337
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 338
    iget-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, -0x1

    .line 339
    iput p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->b:I

    .line 340
    iput p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->c:I

    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 0

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 348
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->makeMovementFlags(II)I

    move-result p1

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
    .locals 1

    .line 316
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 317
    iget p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->b:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 318
    iput p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->b:I

    .line 320
    :cond_0
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->c:I

    .line 321
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->b(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)Ljava/util/ArrayList;

    move-result-object p2

    iget p3, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->c:I

    invoke-static {p2, p1, p3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 322
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->a(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;)Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;

    move-result-object p2

    iget p3, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$2;->c:I

    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingReorderAdapter;->notifyItemMoved(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    if-eqz p2, :cond_0

    .line 329
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 331
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
