.class public final Landroidx/transition/TransitionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 27
    invoke-static/range {v0 .. v7}, Landroidx/transition/TransitionKt;->a(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public static final a(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/transition/Transition;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 73
    new-instance v6, Landroidx/transition/TransitionKt$addListener$1;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/transition/TransitionKt$addListener$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v6, Landroid/transition/Transition$TransitionListener;

    invoke-virtual {p0, v6}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public static bridge synthetic a(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 3
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x13
    .end annotation

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 67
    move-object p1, v0

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 68
    move-object p2, v0

    check-cast p2, Lkotlin/jvm/functions/Function1;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 69
    move-object p3, v0

    check-cast p3, Lkotlin/jvm/functions/Function1;

    :cond_2
    move-object v1, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 70
    move-object p4, v0

    check-cast p4, Lkotlin/jvm/functions/Function1;

    :cond_3
    move-object v2, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    .line 71
    move-object p5, v0

    check-cast p5, Lkotlin/jvm/functions/Function1;

    :cond_4
    move-object v0, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v1

    move-object p6, v2

    move-object p7, v0

    invoke-static/range {p2 .. p7}, Landroidx/transition/TransitionKt;->a(Landroid/transition/Transition;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
