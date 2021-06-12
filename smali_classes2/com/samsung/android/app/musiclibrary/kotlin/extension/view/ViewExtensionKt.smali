.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    if-lez v1, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "no_id"

    .line 119
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Landroid/view/View;I)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, p1, :cond_0

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 22
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 21
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static final a(Landroid/view/View;IJLandroid/view/animation/Interpolator;)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    check-cast p4, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 64
    new-instance p3, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$setVisibility$2;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$setVisibility$2;-><init>(Landroid/view/View;I)V

    check-cast p3, Landroid/animation/Animator$AnimatorListener;

    .line 63
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    check-cast p4, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    invoke-virtual {p4, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 57
    new-instance p3, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$setVisibility$1;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$setVisibility$1;-><init>(Landroid/view/View;I)V

    check-cast p3, Landroid/animation/Animator$AnimatorListener;

    .line 56
    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public static synthetic a(Landroid/view/View;IJLandroid/view/animation/Interpolator;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 52
    new-instance p4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast p4, Landroid/view/animation/Interpolator;

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;IJLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public static final a(Landroid/view/View;ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$addAccessibilityAction$1;

    invoke-direct {v0, p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$addAccessibilityAction$1;-><init>(Ljava/lang/CharSequence;ILjava/lang/String;)V

    check-cast v0, Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 103
    move-object p2, v0

    check-cast p2, Ljava/lang/String;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 104
    move-object p3, v0

    check-cast p3, Ljava/lang/CharSequence;

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;ILjava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static final a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    :goto_0
    if-eqz p2, :cond_1

    .line 37
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    :goto_1
    if-eqz p3, :cond_2

    .line 38
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p3

    :goto_2
    if-eqz p4, :cond_3

    .line 39
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    .line 40
    :goto_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 35
    move-object p1, v0

    check-cast p1, Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    check-cast p2, Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    check-cast p3, Ljava/lang/Integer;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    check-cast p4, Ljava/lang/Integer;

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final b(Landroid/view/View;)V
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->resetPivot()V

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotX(F)V

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    :goto_0
    return-void
.end method

.method public static final b(Landroid/view/View;I)V
    .locals 2

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 29
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p1, v1, :cond_0

    .line 30
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static final b(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 45
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 46
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_1
    if-eqz p3, :cond_2

    .line 47
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_2
    if-eqz p4, :cond_3

    .line 48
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 44
    :cond_3
    check-cast v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 43
    move-object p1, v0

    check-cast p1, Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    check-cast p2, Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    check-cast p3, Ljava/lang/Integer;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    check-cast p4, Ljava/lang/Integer;

    :cond_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final c(Landroid/view/View;I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 91
    new-instance v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$setRoleDescription$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt$setRoleDescription$1;-><init>(Ljava/lang/String;)V

    check-cast v0, Landroid/support/v4/view/AccessibilityDelegateCompat;

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method
