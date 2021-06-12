.class final Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->b(JJ)V
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
    b = "RecommendPlaylistManager.kt"
    c = {
        0x131
    }
    d = "invokeSuspend"
    e = "com.samsung.android.app.music.list.local.RecommendPlaylistManager$addTrack$1"
.end annotation


# instance fields
.field final synthetic $audioId:J

.field final synthetic $playlistId:J

.field J$0:J

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;JJLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    iput-wide p2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->$playlistId:J

    iput-wide p4, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->$audioId:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    iget-wide v3, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->$playlistId:J

    iget-wide v5, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->$audioId:J

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;-><init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;JJLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 297
    iget v1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 316
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 297
    :pswitch_0
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->J$0:J

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_1
    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 298
    new-instance p1, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;

    .line 299
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v2, "WeakReference(fragment).get()!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .line 300
    iget-wide v3, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->$playlistId:J

    .line 301
    iget-wide v5, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->$audioId:J

    move-object v1, p1

    .line 298
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;JJ)V

    .line 302
    invoke-virtual {p1}, Lcom/samsung/android/app/music/util/task/RecommendToPlaylistTask;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(J)Ljava/lang/Long;

    move-result-object p1

    .line 303
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    .line 305
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->b()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iput-wide v1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->J$0:J

    const/4 v4, 0x1

    iput v4, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->label:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-wide v0, v1

    .line 313
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->d()Ljava/util/HashMap;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-wide v2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->$audioId:J

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 297
    :cond_4
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
