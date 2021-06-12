.class public final Lcom/samsung/android/app/musiclibrary/kotlin/extension/constraint/GuidelinExtensionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/support/constraint/Guideline;)I
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Landroid/support/constraint/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget p0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    return p0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.constraint.ConstraintLayout.LayoutParams"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Landroid/support/constraint/Guideline;)I
    .locals 1

    const-string v0, "receiver$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Landroid/support/constraint/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    iget p0, p0, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    return p0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.constraint.ConstraintLayout.LayoutParams"

    invoke-direct {p0, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
