.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V
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
    b = "PlayerImpl.kt"
    c = {}
    d = "invokeSuspend"
    e = "com.samsung.android.app.musiclibrary.core.service.v3.aidl.impl.PlayerImpl$ObserverGroup$toMain$1"
.end annotation


# instance fields
.field final synthetic $s$inlined:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;->$s$inlined:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;->$s$inlined:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    invoke-direct {v0, p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    .line 119
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;->label:I

    if-nez v0, :cond_3

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 260
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;->$s$inlined:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->access$printLifeCycleLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;->access$getCallbacksTo$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    .line 262
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .line 263
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 264
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 266
    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 268
    :cond_0
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    .line 261
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$ObserverGroup$callbacksFromAidl$1$onPlaybackStateChanged$$inlined$toMain$1;->$s$inlined:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V

    goto :goto_0

    .line 121
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 119
    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    .line 121
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
