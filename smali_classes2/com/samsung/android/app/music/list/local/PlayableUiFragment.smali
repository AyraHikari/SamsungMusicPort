.class public abstract Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
        "*>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "TT;>;",
        "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private c:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

.field private d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 121
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;-><init>(Lcom/samsung/android/app/music/list/local/PlayableUiFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->f:Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/PlayableUiFragment;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/PlayableUiFragment;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/PlayableUiFragment;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object p0
.end method


# virtual methods
.method protected final a(IJJ)V
    .locals 7

    const/4 v0, 0x0

    .line 102
    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->d:Lkotlin/jvm/functions/Function0;

    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->c:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    if-eqz v1, :cond_0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a(IJJ)V

    :cond_0
    return-void
.end method

.method protected final c(I)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->e:Lkotlin/jvm/functions/Function0;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->c:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->a(I)V

    :cond_0
    return-void
.end method

.method protected final d()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 45
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 46
    new-instance p1, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 47
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->c:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onDestroyCalled()V

    .line 65
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroy()V

    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 88
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onHiddenChanged(Z)V

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->d:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->e:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_1
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 9

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    .line 70
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v5

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$onMetadataChanged$1;

    move-object v2, v1

    move-object v3, p0

    move v4, v0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$onMetadataChanged$1;-><init>(Lcom/samsung/android/app/music/list/local/PlayableUiFragment;IJLcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->d:Lkotlin/jvm/functions/Function0;

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v7

    move-object v2, p0

    move v3, v0

    move-wide v4, v5

    move-wide v6, v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a(IJJ)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$onPlaybackStateChanged$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment$onPlaybackStateChanged$1;-><init>(Lcom/samsung/android/app/music/list/local/PlayableUiFragment;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->e:Lkotlin/jvm/functions/Function0;

    return-void

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->c(I)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 52
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->f:Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->f:Lcom/samsung/android/app/music/list/local/PlayableUiFragment$activeQueueObserver$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 60
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->getUserVisibleHint()Z

    move-result v0

    .line 39
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setUserVisibleHint(Z)V

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->M()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->k()V

    :cond_0
    return-void
.end method
