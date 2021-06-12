.class final Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$animateToTab$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$animateToTab$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$animateToTab$$inlined$apply$lambda$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "it"

    .line 388
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 389
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$animateToTab$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;I)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$animateToTab$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->scrollTo(II)V

    return-void

    .line 388
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
