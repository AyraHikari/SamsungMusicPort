.class Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->withTextColorAnimation(Landroid/widget/TextView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;

.field final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;Landroid/widget/TextView;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder$1;->this$0:Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;

    iput-object p2, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder$1;->val$text:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder$1;->val$text:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
