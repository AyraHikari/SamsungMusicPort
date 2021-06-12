.class final Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    e = "com.samsung.android.app.music.list.local.RecommendPlaylistManager$addTrack$1$1$1"
.end annotation


# instance fields
.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    .line 305
    iget v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;->label:I

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 306
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->b(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->b(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1$1;-><init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/playlist/RecommendAddItemAnimator;->doWhenAnimationDone(Lkotlin/jvm/functions/Function0;)V

    .line 312
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 305
    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    .line 312
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
