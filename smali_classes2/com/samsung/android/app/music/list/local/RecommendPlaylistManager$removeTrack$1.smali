.class final Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->b(J)V
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
    c = {}
    d = "invokeSuspend"
    e = "com.samsung.android.app.music.list.local.RecommendPlaylistManager$removeTrack$1"
.end annotation


# instance fields
.field final synthetic $audioId:J

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    iput-wide p2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->$audioId:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    iget-wide v2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->$audioId:J

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;-><init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;JLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    .line 328
    iget v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->label:I

    if-nez v0, :cond_3

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 330
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const/4 v0, 0x1

    .line 472
    new-array v0, v0, [J

    .line 473
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 474
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 331
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->d()Ljava/util/HashMap;

    move-result-object v4

    iget-wide v5, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->$audioId:J

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->a(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v4, Ljava/lang/Long;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    :cond_1
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;

    invoke-direct {v1, p1, v0}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;[J)V

    .line 331
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistTrackDeletableImpl;->deleteItems()V

    .line 332
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->d()Ljava/util/HashMap;

    move-result-object p1

    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->$audioId:J

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$removeTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {p1, v2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->b(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;Z)V

    .line 335
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 328
    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    .line 335
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
