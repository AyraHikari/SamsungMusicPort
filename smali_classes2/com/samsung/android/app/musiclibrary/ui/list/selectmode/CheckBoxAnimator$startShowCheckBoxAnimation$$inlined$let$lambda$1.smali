.class final Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic e:I

.field final synthetic f:Landroid/animation/ValueAnimator;

.field final synthetic g:F

.field final synthetic h:Z

.field final synthetic i:F


# direct methods
.method constructor <init>(Landroid/view/View;IILcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;ILandroid/animation/ValueAnimator;FZF)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->a:Landroid/view/View;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->b:I

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->c:I

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput p5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->e:I

    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->f:Landroid/animation/ValueAnimator;

    iput p7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->g:F

    iput-boolean p8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->h:Z

    iput p9, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->i:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    const-string v0, "animation"

    .line 105
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 106
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->g:F

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->a:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 110
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->b:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    .line 111
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->h:Z

    if-eqz v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->a:Landroid/view/View;

    const-string v3, "container"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->a:Landroid/view/View;

    const-string v2, "container"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 116
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->i:F

    cmpg-float p1, p1, v0

    if-nez p1, :cond_2

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->a:Landroid/view/View;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$let$lambda$1;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void

    .line 105
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
