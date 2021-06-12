.class final Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/animation/ValueAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/animation/ValueAnimator;
    .locals 10

    .line 52
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 53
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->b()Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    move-result-object v1

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x12c

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 55
    move-object v3, v0

    check-cast v3, Landroid/animation/Animator;

    .line 56
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2$$special$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2$$special$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2;)V

    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    .line 55
    invoke-static/range {v3 .. v9}, Landroidx/animation/AnimatorKt;->a(Landroid/animation/Animator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2;->invoke()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method
