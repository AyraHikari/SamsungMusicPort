.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/RecyclerViewExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/support/v7/widget/RecyclerView;)I
    .locals 3

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 38
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    goto :goto_2

    .line 39
    :cond_1
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    goto :goto_2

    .line 40
    :cond_2
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_5

    .line 41
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p0

    new-array p0, p0, [I

    .line 42
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 43
    aget p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_5
    :goto_2
    return v2
.end method

.method public static final a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p0

    .line 27
    instance-of v0, p0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 28
    :cond_0
    instance-of v0, p0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 29
    :cond_1
    instance-of v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final b(Landroid/support/v7/widget/RecyclerView;)I
    .locals 3

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 54
    instance-of v1, v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    goto :goto_2

    .line 55
    :cond_1
    instance-of v1, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    goto :goto_2

    .line 56
    :cond_2
    instance-of v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v1, :cond_5

    .line 57
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p0

    new-array p0, p0, [I

    .line 58
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 59
    aget p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_5
    :goto_2
    return v2
.end method

.method public static final c(Landroid/support/v7/widget/RecyclerView;)V
    .locals 3

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 68
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-lez v0, :cond_1

    .line 70
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/RecyclerViewExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 72
    instance-of v1, v1, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/RecyclerViewExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 76
    :cond_1
    :goto_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/RecyclerViewExtensionKt$goToTop$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/RecyclerViewExtensionKt$goToTop$1;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
