.class Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->K()V

    .line 427
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->c(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v1

    .line 428
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v1

    .line 427
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;I)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->notifyDataSetChanged()V

    .line 430
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5$1;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Z)Z

    return-void
.end method
