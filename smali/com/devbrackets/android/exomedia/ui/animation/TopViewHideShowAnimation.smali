.class public Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;
.super Landroid/view/animation/AnimationSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/view/View;ZJ)V
    .locals 5

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 37
    iput-boolean p2, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->b:Z

    .line 38
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 44
    :goto_1
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 45
    invoke-virtual {v4, p3, p4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    if-eqz p2, :cond_2

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz p2, :cond_3

    goto :goto_3

    .line 50
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int v0, p1

    .line 51
    :goto_3
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {p1, v2, v2, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    if-eqz p2, :cond_4

    .line 52
    new-instance p2, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {p2}, Landroid/support/v4/view/animation/LinearOutSlowInInterpolator;-><init>()V

    goto :goto_4

    :cond_4
    new-instance p2, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;

    invoke-direct {p2}, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;-><init>()V

    :goto_4
    invoke-virtual {p1, p2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 53
    invoke-virtual {p1, p3, p4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 57
    invoke-virtual {p0, v4}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->addAnimation(Landroid/view/animation/Animation;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->addAnimation(Landroid/view/animation/Animation;)V

    .line 60
    new-instance p1, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$Listener;-><init>(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation$1;)V

    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic a(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;->b:Z

    return p0
.end method
