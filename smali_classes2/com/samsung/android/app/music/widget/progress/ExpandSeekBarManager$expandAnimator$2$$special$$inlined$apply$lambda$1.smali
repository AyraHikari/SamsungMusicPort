.class final Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandAnimator$2$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandAnimator$2;->invoke()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandAnimator$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandAnimator$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandAnimator$2$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandAnimator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    const-string v0, "animation"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandAnimator$2$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandAnimator$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->e(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandAnimator$2$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandAnimator$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$expandAnimator$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->f(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p1

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p1

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    :cond_0
    return-void

    .line 49
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
