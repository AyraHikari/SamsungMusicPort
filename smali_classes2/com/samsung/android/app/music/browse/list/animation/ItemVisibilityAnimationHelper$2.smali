.class Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/Animator;

.field final synthetic b:I

.field final synthetic c:Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;Landroid/animation/Animator;I)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$2;->c:Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$2;->a:Landroid/animation/Animator;

    iput p3, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$2;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 290
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 291
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$2;->a:Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 292
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$2;->c:Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->b(Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;)Landroid/util/SparseArray;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$2;->b:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 297
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 298
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$2;->a:Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 299
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$2;->c:Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;->b(Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper;)Landroid/util/SparseArray;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/animation/ItemVisibilityAnimationHelper$2;->b:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
