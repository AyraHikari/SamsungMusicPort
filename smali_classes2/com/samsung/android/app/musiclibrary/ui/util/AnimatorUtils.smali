.class public final Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static varargs a([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 1

    .line 61
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 62
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 63
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0
.end method

.method public static a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;
    .locals 6

    const/4 v0, 0x2

    .line 27
    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v2, "scaleX"

    new-array v3, v0, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v5, 0x1

    aput p2, v3, v5

    .line 28
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "scaleY"

    new-array v0, v0, [F

    aput p1, v0, v4

    aput p2, v0, v5

    .line 29
    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v5

    .line 27
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 31
    invoke-virtual {p0, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method public static b(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;
    .locals 3

    const-string v0, "alpha"

    const/4 v1, 0x2

    .line 47
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    .line 48
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 49
    invoke-virtual {p0, p4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method
