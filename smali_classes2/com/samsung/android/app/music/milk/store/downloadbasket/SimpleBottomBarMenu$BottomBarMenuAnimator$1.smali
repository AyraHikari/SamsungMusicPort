.class Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;->a()V
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

    .line 211
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 214
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$BottomBarMenuAnimator;

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

    .line 216
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
