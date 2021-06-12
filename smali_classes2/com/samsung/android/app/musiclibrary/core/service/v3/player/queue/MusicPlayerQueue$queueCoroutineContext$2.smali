.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$queueCoroutineContext$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/coroutines/CoroutineContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$queueCoroutineContext$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$queueCoroutineContext$2;->invoke()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$queueCoroutineContext$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getQueueSingleThreadDispatcher$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$queueCoroutineContext$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getRootJob$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lkotlinx/coroutines/Job;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/ExecutorCoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method
