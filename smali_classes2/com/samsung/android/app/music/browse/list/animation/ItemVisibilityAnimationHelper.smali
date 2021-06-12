.class public Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;
.super Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseBooleanArray;

.field private d:Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;

.field private e:I

.field private f:I

.field private g:Landroid/support/v7/widget/RecyclerView;

.field private h:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;-><init>()V

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->a:Landroid/util/SparseArray;

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->b:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->c:Landroid/util/SparseBooleanArray;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->d:Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;

    return-void
.end method

.method private a(I)I
    .locals 0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;)Landroid/util/SparseArray;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->a:Landroid/util/SparseArray;

    return-object p0
.end method

.method private a(II)V
    .locals 5

    .line 112
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->h:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    if-gez p2, :cond_0

    const-string p1, "ItemVisibilityAnimationHelper"

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTopScroll. first is invalid. first - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_0
    iput p2, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->e:I

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->h:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 123
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->d:Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-interface {v2, v3, v0}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;->a(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 125
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->b(II)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    neg-int v4, v1

    if-ge v4, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-ne p1, v3, :cond_2

    neg-int p1, v1

    if-le p1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v4, :cond_3

    .line 137
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private a(III)V
    .locals 6

    add-int/lit8 v0, p1, 0x1

    if-nez p2, :cond_0

    .line 199
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->h:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->h:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 203
    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->d:Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-interface {v3, v4, v1}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;->b(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    const-string v3, "ItemVisibilityAnimationHelper"

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchInvisibleLastView. top - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", base - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", direction - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", last - "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", dy - "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-le v2, v1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const-string v1, "ItemVisibilityAnimationHelper"

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchAppearView. cancel previous animation. pos - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "ItemVisibilityAnimationHelper"

    const-string p2, "dispatchAppearView. viewHolder is null"

    .line 222
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 226
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->c:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->d:Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;->b(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    const-string v0, "ItemVisibilityAnimationHelper"

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchAppearView. pos - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", animator - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3

    const-string p1, "ItemVisibilityAnimationHelper"

    const-string p2, "dispatchAppearView. animator is null"

    .line 235
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$1;-><init>(Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;Landroid/animation/Animator;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 256
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;)Landroid/util/SparseArray;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method private b(II)V
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    return-void

    .line 153
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->h:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    add-int/2addr p1, v0

    :goto_0
    if-ge p1, p2, :cond_3

    .line 156
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ItemVisibilityAnimationHelper"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceAppearViewIfSkipped. pos - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " invisible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    const-string v1, "ItemVisibilityAnimationHelper"

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchDisappearView. cancel previous animation. pos - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "ItemVisibilityAnimationHelper"

    const-string p2, "dispatchDisappearView. view holder is null"

    .line 268
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 272
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->d:Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;->c(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p1

    const-string v0, "ItemVisibilityAnimationHelper"

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchDisappearView. pos - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", animator - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_3

    const-string p1, "ItemVisibilityAnimationHelper"

    const-string p2, "dispatchDisappearView. animator is null"

    .line 281
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    new-instance v0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$2;-><init>(Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;Landroid/animation/Animator;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 302
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private b(I)Z
    .locals 1

    .line 306
    iget v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->e:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->f:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private c(II)V
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->h:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    if-ltz v0, :cond_5

    .line 165
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->h:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_2

    .line 170
    :cond_0
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->f:I

    .line 172
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->h:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 175
    iget-object v3, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->d:Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-interface {v3, v4, v1}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;->b(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    if-ge v2, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez p1, :cond_2

    if-le v2, v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v5, :cond_3

    .line 186
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 189
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 194
    :cond_4
    :goto_1
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->a(III)V

    return-void

    :cond_5
    :goto_2
    const-string p1, "ItemVisibilityAnimationHelper"

    .line 166
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchBottomScroll. last is invalid. last - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(I)Z
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private d(I)Z
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->g:Landroid/support/v7/widget/RecyclerView;

    .line 79
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->h:Landroid/support/v7/widget/LinearLayoutManager;

    return-void
.end method

.method protected a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->a(I)I

    move-result p1

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->a(II)V

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->c(II)V

    return-void
.end method

.method protected a(Landroid/view/View;I)V
    .locals 3

    const-string v0, "ItemVisibilityAnimationHelper"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItemOffsets. isScroll - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", fastScroll - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", position - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", first - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", last - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->d:Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;->a(Landroid/view/View;)V

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->c:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->d:Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$ItemVisibilityAnimation;->d(Landroid/view/View;)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->c:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    :goto_0
    return-void
.end method
