.class public final Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;
    }
.end annotation


# instance fields
.field private final close:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isSupportNavigationBar(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 23
    sget p1, Lcom/samsung/android/app/musiclibrary/R$id;->close_button:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 24
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$$special$$inlined$apply$lambda$1;

    invoke-direct {p2, p3}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$$special$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController$OnControllerClickListener;)V

    check-cast p2, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 27
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p3

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 26
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 29
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    move-object v0, p1

    .line 22
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;->close:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public onScreenOffAnimationEnd(Z)V
    .locals 0

    return-void
.end method

.method public onScreenOffAnimationStart()V
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;->close:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 54
    check-cast v0, Landroid/view/View;

    const/16 v2, 0x12c

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    check-cast v3, Landroid/animation/TimeInterpolator;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v0, v5, v4, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/16 v3, 0xc8

    .line 56
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    check-cast v6, Landroid/animation/TimeInterpolator;

    invoke-static {v0, v5, v4, v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->b(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v3, 0x2

    .line 57
    new-array v3, v3, [Landroid/animation/Animator;

    check-cast v2, Landroid/animation/Animator;

    aput-object v2, v3, v1

    const/4 v1, 0x1

    check-cast v0, Landroid/animation/Animator;

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public onScreenOnAnimationEnd()V
    .locals 0

    return-void
.end method

.method public onScreenOnAnimationStart()V
    .locals 6

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicExtraController;->close:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 39
    check-cast v0, Landroid/view/View;

    const/16 v1, 0x12c

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->b:Landroid/view/animation/Interpolator;

    check-cast v2, Landroid/animation/TimeInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const/16 v2, 0xc8

    .line 41
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->a:Landroid/view/animation/Interpolator;

    check-cast v5, Landroid/animation/TimeInterpolator;

    invoke-static {v0, v4, v3, v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->b(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v2, 0x2

    .line 42
    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    check-cast v1, Landroid/animation/Animator;

    aput-object v1, v2, v3

    const/4 v1, 0x1

    check-cast v0, Landroid/animation/Animator;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->a([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method
