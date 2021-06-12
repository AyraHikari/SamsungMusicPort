.class public Landroid/support/design/internal/SeslTabRoundRectIndicator;
.super Landroid/support/design/internal/SeslAbsIndicatorView;
.source "SourceFile"


# static fields
.field private static final SESL_TAB_ROUND_RECT_HIDE_DURATION:I = 0x64

.field private static final SESL_TAB_ROUND_RECT_PRESS_DURATION:I = 0x32

.field private static final SESL_TAB_ROUND_RECT_RELEASE_DURATION:I = 0x15e

.field private static final SESL_TAB_ROUND_RECT_SCALE_MINOR:F = 0.95f


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mPressAnimationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/design/internal/SeslAbsIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 52
    invoke-direct {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->isLightTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Landroid/support/design/R$drawable;->sesl_tablayout_subtab_indicator_background:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Landroid/support/design/R$drawable;->sesl_tablayout_subtab_indicator_background_dark:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object p1, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$002(Landroid/support/design/internal/SeslTabRoundRectIndicator;Landroid/view/animation/AnimationSet;)Landroid/view/animation/AnimationSet;
    .locals 0

    .line 26
    iput-object p1, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    return-object p1
.end method

.method private isLightTheme()Z
    .locals 4

    .line 167
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 168
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 169
    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method


# virtual methods
.method onHide()V
    .locals 4

    .line 78
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x0

    .line 79
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v2, 0x1

    .line 80
    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 82
    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 83
    invoke-virtual {p0, v1}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->setAlpha(F)V

    return-void
.end method

.method onPressed()V
    .locals 15

    const/high16 v0, 0x3f800000    # 1.0f

    .line 106
    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->setAlpha(F)V

    .line 107
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    .line 108
    iget-object v1, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 109
    iget-object v1, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 110
    iget-object v1, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v5, Landroid/support/design/internal/SeslTabRoundRectIndicator$1;

    invoke-direct {v5, p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator$1;-><init>(Landroid/support/design/internal/SeslTabRoundRectIndicator;)V

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 125
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f733333    # 0.95f

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f733333    # 0.95f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 130
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 131
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Landroid/support/design/widget/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 132
    invoke-virtual {v1, v4}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 133
    iget-object v5, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v5, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 135
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->isSelected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 137
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 138
    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 139
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Landroid/support/design/widget/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 140
    iget-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 143
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method onReleased()V
    .locals 12

    const/high16 v0, 0x3f800000    # 1.0f

    .line 148
    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->setAlpha(F)V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    .line 150
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v1, 0x1

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 153
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f733333    # 0.95f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f733333    # 0.95f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x15e

    .line 158
    invoke-virtual {v11, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 159
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroid/support/design/widget/TabLayout;->SESL_TAB_ANIM_INTERPOLATOR:I

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/content/Context;I)V

    .line 160
    invoke-virtual {v11, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 162
    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 163
    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method onSetSelectedIndicatorColor(I)V
    .locals 1

    .line 174
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v0, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 177
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->setHideImmediatly()V

    :cond_0
    return-void
.end method

.method onShow()V
    .locals 1

    .line 88
    iget-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->onReleased()V

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/internal/SeslTabRoundRectIndicator;->mPressAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->onReleased()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    invoke-super {p0, p1, p2}, Landroid/support/design/internal/SeslAbsIndicatorView;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->setHideImmediatly()V

    :cond_0
    return-void
.end method

.method public setHideImmediatly()V
    .locals 4

    .line 68
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x0

    .line 69
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v2, 0x1

    .line 70
    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 72
    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    .line 73
    invoke-virtual {p0, v1}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->setAlpha(F)V

    return-void
.end method

.method public showImmediatly()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 97
    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->setAlpha(F)V

    .line 98
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x0

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 100
    invoke-virtual {v1, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 101
    invoke-virtual {p0, v1}, Landroid/support/design/internal/SeslTabRoundRectIndicator;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
