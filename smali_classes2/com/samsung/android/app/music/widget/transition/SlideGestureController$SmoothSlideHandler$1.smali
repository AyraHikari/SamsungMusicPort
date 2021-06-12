.class Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$1;->a:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1

    .line 666
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    sub-float/2addr p2, p3

    mul-float p2, p2, p1

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 663
    check-cast p2, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$1;->a(FLjava/lang/Float;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
