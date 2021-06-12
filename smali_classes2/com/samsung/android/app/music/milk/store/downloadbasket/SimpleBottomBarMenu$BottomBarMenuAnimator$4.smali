.class Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$4;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 273
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$4;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 275
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 278
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$4;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x4

    .line 279
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    return-void
.end method
