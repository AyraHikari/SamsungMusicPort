.class public Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;
.super Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$TrackIdConverter;
    }
.end annotation


# instance fields
.field protected final a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

.field private final c:Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$TrackIdConverter;

.field private d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

.field private e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$TrackIdConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;",
            ">;",
            "Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$TrackIdConverter;",
            ")V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$1;-><init>(Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 68
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$2;-><init>(Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 104
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 105
    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->c:Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$TrackIdConverter;

    .line 107
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->b:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 8

    .line 142
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->c:Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$TrackIdConverter;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$TrackIdConverter;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    :cond_0
    move-wide v6, v0

    .line 147
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v3, v0

    .line 148
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v4

    move-object v2, p0

    .line 149
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a(IJJ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onDestroyCalled()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 128
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getActivePlayerQueue()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->d:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 134
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->e:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 137
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    .line 136
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    :goto_0
    return-void
.end method
