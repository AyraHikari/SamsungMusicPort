.class Lcom/samsung/android/app/music/view/transition/ChangeRound$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/view/transition/ChangeRound;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/samsung/android/app/music/view/transition/ChangeRound;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/view/transition/ChangeRound;Landroid/view/View;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$2;->b:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    iput-object p2, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 149
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    .line 151
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;

    if-eqz v1, :cond_0

    .line 152
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundRectConverter$RoundRectOutline;->setRound(F)V

    :cond_0
    return-void
.end method
