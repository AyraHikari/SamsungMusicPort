.class Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/cover/CoverQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopScrollLinearLayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager$TopSnappedSmoothScroller;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    .line 66
    new-instance p2, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager$TopSnappedSmoothScroller;

    .line 67
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager$TopSnappedSmoothScroller;-><init>(Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager;Landroid/content/Context;)V

    .line 68
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 69
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
