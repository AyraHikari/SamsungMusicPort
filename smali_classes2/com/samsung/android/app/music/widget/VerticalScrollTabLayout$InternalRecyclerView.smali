.class Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalRecyclerView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 332
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(IF)V
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 350
    instance-of v1, v0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    if-eqz v1, :cond_0

    .line 352
    check-cast v0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    .line 353
    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a(Landroid/support/v7/widget/RecyclerView;IF)V

    :cond_0
    return-void
.end method

.method public fling(II)Z
    .locals 4

    int-to-double v0, p2

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double v0, v0, v2

    double-to-int p2, v0

    const-string v0, "InternalRecyclerView"

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fling. new velocityY - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result p1

    return p1
.end method

.method public smoothScrollToPosition(I)V
    .locals 0

    .line 345
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
