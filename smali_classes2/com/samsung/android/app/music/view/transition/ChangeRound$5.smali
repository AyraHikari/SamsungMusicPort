.class Lcom/samsung/android/app/music/view/transition/ChangeRound$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/view/transition/ChangeRound;->a(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/samsung/android/app/music/view/transition/ChangeRound;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/view/transition/ChangeRound;Landroid/widget/ImageView;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$5;->b:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    iput-object p2, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$5;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 236
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$5;->b:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a(Lcom/samsung/android/app/music/view/transition/ChangeRound;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 239
    iget-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$5;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$5;->b:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->b(Lcom/samsung/android/app/music/view/transition/ChangeRound;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$5;->b:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a(Lcom/samsung/android/app/music/view/transition/ChangeRound;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 241
    invoke-static {}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "New image is loaded"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$5;->b:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a(Lcom/samsung/android/app/music/view/transition/ChangeRound;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$5;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$5;->b:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a(Lcom/samsung/android/app/music/view/transition/ChangeRound;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
