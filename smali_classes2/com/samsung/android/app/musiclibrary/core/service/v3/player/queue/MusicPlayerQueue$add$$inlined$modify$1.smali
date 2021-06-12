.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->add(II[JZILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    b = "MusicPlayerQueue.kt"
    c = {}
    d = "invokeSuspend"
    e = "com.samsung.android.app.musiclibrary.core.service.v3.player.queue.MusicPlayerQueue$modify$3"
.end annotation


# instance fields
.field final synthetic $ids$inlined:[J

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

.field final synthetic this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->$ids$inlined:[J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->$ids$inlined:[J

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[J)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    .line 530
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->label:I

    if-nez v0, :cond_3

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 531
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->this$0$inline_fun:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    .line 656
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getDEBUG_INTERNAL$cp()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMUSIC-SV"

    .line 660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\t "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicPlayerQueue DEBUG "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "modify"

    .line 531
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 659
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getPlayList$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)[J

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->$ids$inlined:[J

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->a([J[J)[J

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$add$$inlined$modify$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$notifyQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[J)V

    .line 533
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 530
    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    .line 533
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
