.class Lcom/samsung/android/app/music/view/transition/ChangeRound$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/view/transition/ChangeRound;->a(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/view/transition/ChangeRound;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/view/transition/ChangeRound;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/samsung/android/app/music/view/transition/ChangeRound$4;->a:Lcom/samsung/android/app/music/view/transition/ChangeRound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(FFF)F
    .locals 0

    sub-float p3, p2, p3

    mul-float p3, p3, p1

    sub-float/2addr p2, p3

    return p2
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 223
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 224
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 225
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/view/transition/ChangeRound$4;->a(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
