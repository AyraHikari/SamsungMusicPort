.class Lcom/samsung/android/app/music/list/local/QueueFragment$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/QueueFragment$6;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/QueueFragment$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFragment$6;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$6$1;->a:Lcom/samsung/android/app/music/list/local/QueueFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$6$1;->a:Lcom/samsung/android/app/music/list/local/QueueFragment$6;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/QueueFragment$6;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->K()V

    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$6$1;->a:Lcom/samsung/android/app/music/list/local/QueueFragment$6;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/QueueFragment$6;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$6$1;->a:Lcom/samsung/android/app/music/list/local/QueueFragment$6;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/QueueFragment$6;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    .line 559
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->d()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v1

    .line 558
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->c(I)V

    .line 560
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$6$1;->a:Lcom/samsung/android/app/music/list/local/QueueFragment$6;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/QueueFragment$6;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->notifyDataSetChanged()V

    .line 561
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$6$1;->a:Lcom/samsung/android/app/music/list/local/QueueFragment$6;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/QueueFragment$6;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->a(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)Z

    return-void
.end method
