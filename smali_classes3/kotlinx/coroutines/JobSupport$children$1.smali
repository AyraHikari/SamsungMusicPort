.class final Lkotlinx/coroutines/JobSupport$children$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/JobSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-",
        "Lkotlinx/coroutines/ChildJob;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    b = "JobSupport.kt"
    c = {
        0x350,
        0x352
    }
    d = "invokeSuspend"
    e = "kotlinx.coroutines.JobSupport$children$1"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlin/sequences/SequenceScope;

.field final synthetic this$0:Lkotlinx/coroutines/JobSupport;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport$children$1;->this$0:Lkotlinx/coroutines/JobSupport;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/coroutines/JobSupport$children$1;

    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$children$1;->this$0:Lkotlinx/coroutines/JobSupport;

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/JobSupport$children$1;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/sequences/SequenceScope;

    iput-object p1, v0, Lkotlinx/coroutines/JobSupport$children$1;->p$:Lkotlin/sequences/SequenceScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/JobSupport$children$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/JobSupport$children$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/JobSupport$children$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 845
    iget v1, p0, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 853
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 845
    :pswitch_0
    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$children$1;->L$5:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/ChildHandleNode;

    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$children$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    iget-object v3, p0, Lkotlinx/coroutines/JobSupport$children$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/NodeList;

    iget-object v4, p0, Lkotlinx/coroutines/JobSupport$children$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/NodeList;

    iget-object v5, p0, Lkotlinx/coroutines/JobSupport$children$1;->L$1:Ljava/lang/Object;

    iget-object v6, p0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlin/sequences/SequenceScope;

    instance-of v7, p1, Lkotlin/Result$Failure;

    if-nez v7, :cond_0

    move-object p1, p0

    goto/16 :goto_1

    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_1
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_2
    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_6

    iget-object p1, p0, Lkotlinx/coroutines/JobSupport$children$1;->p$:Lkotlin/sequences/SequenceScope;

    .line 846
    iget-object v1, p0, Lkotlinx/coroutines/JobSupport$children$1;->this$0:Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v1}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v1

    .line 848
    instance-of v3, v1, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/ChildHandleNode;

    iget-object v3, v3, Lkotlinx/coroutines/ChildHandleNode;->a:Lkotlinx/coroutines/ChildJob;

    iput-object v1, p0, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    invoke-virtual {p1, v3, p0}, Lkotlin/sequences/SequenceScope;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 849
    :cond_2
    instance-of v3, v1, Lkotlinx/coroutines/Incomplete;

    if-eqz v3, :cond_5

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v3}, Lkotlinx/coroutines/Incomplete;->G_()Lkotlinx/coroutines/NodeList;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1342
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->f()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-object v6, p1

    move-object v5, v1

    move-object v1, v4

    move-object p1, p0

    move-object v4, v3

    .line 1343
    :goto_0
    move-object v7, v3

    check-cast v7, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v2

    if-eqz v7, :cond_5

    .line 1344
    instance-of v7, v1, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v7, :cond_3

    move-object v7, v1

    check-cast v7, Lkotlinx/coroutines/ChildHandleNode;

    .line 850
    iget-object v8, v7, Lkotlinx/coroutines/ChildHandleNode;->a:Lkotlinx/coroutines/ChildJob;

    iput-object v6, p1, Lkotlinx/coroutines/JobSupport$children$1;->L$0:Ljava/lang/Object;

    iput-object v5, p1, Lkotlinx/coroutines/JobSupport$children$1;->L$1:Ljava/lang/Object;

    iput-object v4, p1, Lkotlinx/coroutines/JobSupport$children$1;->L$2:Ljava/lang/Object;

    iput-object v3, p1, Lkotlinx/coroutines/JobSupport$children$1;->L$3:Ljava/lang/Object;

    iput-object v1, p1, Lkotlinx/coroutines/JobSupport$children$1;->L$4:Ljava/lang/Object;

    iput-object v7, p1, Lkotlinx/coroutines/JobSupport$children$1;->L$5:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, p1, Lkotlinx/coroutines/JobSupport$children$1;->label:I

    invoke-virtual {v6, v8, p1}, Lkotlin/sequences/SequenceScope;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_3

    return-object v0

    .line 1345
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->g()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v1

    goto :goto_0

    .line 1342
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 853
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 845
    :cond_6
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
