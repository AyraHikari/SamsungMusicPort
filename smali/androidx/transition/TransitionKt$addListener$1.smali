.class public final Landroidx/transition/TransitionKt$addListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/TransitionKt;->a(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;

.field final synthetic b:Lkotlin/jvm/functions/Function1;

.field final synthetic c:Lkotlin/jvm/functions/Function1;

.field final synthetic d:Lkotlin/jvm/functions/Function1;

.field final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 73
    iput-object p1, p0, Landroidx/transition/TransitionKt$addListener$1;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/transition/TransitionKt$addListener$1;->b:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/transition/TransitionKt$addListener$1;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Landroidx/transition/TransitionKt$addListener$1;->d:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Landroidx/transition/TransitionKt$addListener$1;->e:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/transition/TransitionKt$addListener$1;->d:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    .line 75
    iget-object v0, p0, Landroidx/transition/TransitionKt$addListener$1;->a:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 1

    .line 83
    iget-object v0, p0, Landroidx/transition/TransitionKt$addListener$1;->c:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 1

    .line 79
    iget-object v0, p0, Landroidx/transition/TransitionKt$addListener$1;->b:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/transition/TransitionKt$addListener$1;->e:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method
