.class Lcom/samsung/android/app/music/view/transition/ChangeRound$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/view/transition/ChangeRound;->a(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/samsung/android/app/music/view/transition/ChangeRound;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/view/transition/ChangeRound;FLandroid/widget/ImageView;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$6;->c:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    iput p2, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$6;->a:F

    iput-object p3, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$6;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$6;->c:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    invoke-static {p1}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->b(Lcom/samsung/android/app/music/view/transition/ChangeRound;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    if-eqz p1, :cond_0

    .line 252
    iget-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$6;->c:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    invoke-static {p1}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->b(Lcom/samsung/android/app/music/view/transition/ChangeRound;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    iget v0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$6;->a:F

    invoke-virtual {p1, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$6;->c:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    invoke-static {p1}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->b(Lcom/samsung/android/app/music/view/transition/ChangeRound;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$6;->c:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->c(Lcom/samsung/android/app/music/view/transition/ChangeRound;)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 255
    iget-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$6;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$6;->c:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    invoke-static {v0}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->b(Lcom/samsung/android/app/music/view/transition/ChangeRound;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    invoke-static {}, Lcom/samsung/android/app/music/view/transition/ChangeRound;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ChangeRound onAnimationEnd()"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
