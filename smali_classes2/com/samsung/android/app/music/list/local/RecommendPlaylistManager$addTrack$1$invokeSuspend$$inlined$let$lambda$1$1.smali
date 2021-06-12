.class final Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $originItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1$1;->$originItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1$1;->$originItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1$invokeSuspend$$inlined$let$lambda$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager$addTrack$1;->this$0:Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;->a(Lcom/samsung/android/app/music/list/local/RecommendPlaylistManager;Z)V

    return-void
.end method
