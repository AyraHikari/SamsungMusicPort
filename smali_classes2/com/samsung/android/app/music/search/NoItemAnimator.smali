.class public Lcom/samsung/android/app/music/search/NoItemAnimator;
.super Landroid/support/v7/widget/SimpleItemAnimator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Landroid/support/v7/widget/SimpleItemAnimator;-><init>()V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/search/NoItemAnimator;->setSupportsChangeAnimations(Z)V

    return-void
.end method


# virtual methods
.method public animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/NoItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1
.end method

.method public animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 0

    const/4 p3, 0x1

    .line 34
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/app/music/search/NoItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/search/NoItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    return p1
.end method

.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/NoItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/NoItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1
.end method

.method public endAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public endAnimations()V
    .locals 0

    return-void
.end method

.method public isRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public runPendingAnimations()V
    .locals 0

    return-void
.end method
