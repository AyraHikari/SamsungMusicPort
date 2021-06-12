.class final Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2$$special$$inlined$apply$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2;->invoke()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/animation/Animator;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2$$special$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2$$special$$inlined$apply$lambda$1;->invoke(Landroid/animation/Animator;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ScrollableTabLayout"

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "end animation scrollX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2$$special$$inlined$apply$lambda$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$scrollAnimator$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
