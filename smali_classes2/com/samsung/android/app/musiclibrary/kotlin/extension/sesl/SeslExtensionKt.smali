.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->seslGetGoToTopBottomPadding()I

    move-result p0

    return p0
.end method

.method public static final a(Landroid/support/design/widget/TabLayout;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 49
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 50
    invoke-virtual {p0, p2}, Landroid/support/design/widget/TabLayout;->seslSetSubTabIndicatorHeight(I)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->seslSetSubTabStyle()V

    if-eqz p1, :cond_1

    .line 53
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 54
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->seslSetSubTabSelectedIndicatorColor(I)V

    :cond_1
    return-void
.end method

.method public static final a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    return-void
.end method

.method public static final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;)V

    return-void
.end method

.method public static final a(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->seslSetCtrlkeyPressed(Z)V

    return-void
.end method

.method public static final a(Landroid/support/v7/widget/RecyclerView;ZZ)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->seslSetOutlineStrokeEnabled(ZZ)V

    return-void
.end method

.method public static synthetic a(Landroid/support/v7/widget/RecyclerView;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 39
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SeslExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;ZZ)V

    return-void
.end method

.method public static final b(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    return-void
.end method

.method public static final b(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    return-void
.end method

.method public static final b(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->seslSetHoverScrollEnabled(Z)V

    return-void
.end method

.method public static final c(Landroid/support/v7/widget/RecyclerView;)I
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->seslGetHoverBottomPadding()I

    move-result p0

    return p0
.end method

.method public static final c(Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->mu_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->seslSetFillBottomColor(I)V

    return-void
.end method
