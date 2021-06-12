.class final Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 482
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->c()I

    move-result p1

    .line 483
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->scrollToPosition(I)V

    .line 484
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->b()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$$inlined$apply$lambda$1$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$onViewCreated$$inlined$apply$lambda$1;ILkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
