.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RippleTranslateAnimation"
.end annotation


# instance fields
.field protected a:I

.field final synthetic b:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;


# direct methods
.method public constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;I)V
    .locals 1

    .line 498
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    int-to-float p1, p2

    const/4 v0, 0x0

    .line 499
    invoke-direct {p0, v0, p1, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 501
    iput p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->a:I

    const-wide/16 p1, 0xfa

    .line 502
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->setDuration(J)V

    .line 503
    invoke-virtual {p0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 513
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->B:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->B:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v0

    iget v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->a:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 514
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;->b:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object p1, p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->B:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
