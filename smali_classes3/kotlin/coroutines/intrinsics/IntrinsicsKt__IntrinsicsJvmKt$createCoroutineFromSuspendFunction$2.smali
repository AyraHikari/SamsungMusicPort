.class public final Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function1;

.field final synthetic $completion:Lkotlin/coroutines/Continuation;

.field final synthetic $context:Lkotlin/coroutines/CoroutineContext;

.field private label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;->$block:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;->$completion:Lkotlin/coroutines/Continuation;

    iput-object p3, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;->$context:Lkotlin/coroutines/CoroutineContext;

    invoke-direct {p0, p4, p5}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V

    return-void
.end method


# virtual methods
.method protected invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 184
    iget v0, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;->label:I

    packed-switch v0, :pswitch_data_0

    .line 194
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :pswitch_0
    const/4 v0, 0x2

    .line 191
    iput v0, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;->label:I

    .line 192
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    .line 186
    iput v0, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;->label:I

    .line 187
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Object;)V

    .line 188
    iget-object p1, p0, Lkotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt$createCoroutineFromSuspendFunction$2;->$block:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
