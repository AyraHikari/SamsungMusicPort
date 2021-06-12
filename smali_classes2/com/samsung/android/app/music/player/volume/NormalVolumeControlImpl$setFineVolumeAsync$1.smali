.class final Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
    b = "NormalVolumeControlImpl.kt"
    c = {}
    d = "invokeSuspend"
    e = "com.samsung.android.app.music.player.volume.NormalVolumeControlImpl$setFineVolumeAsync$1"
.end annotation


# instance fields
.field final synthetic $fineVolume:I

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;->this$0:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    iput p2, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;->$fineVolume:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;->this$0:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    iget v2, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;->$fineVolume:I

    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;-><init>(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    .line 374
    iget v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;->label:I

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 375
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;->this$0:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->b(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;Z)V

    .line 376
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;->this$0:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->c(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object p1

    const-string v0, "audioManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;->$fineVolume:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->setVolume(I)V

    .line 377
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;->this$0:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->b(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;Z)V

    .line 378
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->b()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance p1, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1$1;-><init>(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$setFineVolumeAsync$1;Lkotlin/coroutines/Continuation;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 381
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 374
    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    .line 381
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
