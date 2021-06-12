.class public Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/lyrics/LyricsController$MediaChangeObservableChangeListener;
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/lyrics/LyricsController$MediaChangeObservableChangeListener;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;"
    }
.end annotation


# static fields
.field private static mDuration:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsRadio:Z

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mMediaId:J

.field private mOnLyricsJumpedListener:Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 44
    iput-wide v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mMediaId:J

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->isRadio(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mIsRadio:Z

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 57
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide p1

    sput-wide p1, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mDuration:J

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mIsRadio:Z

    return p0
.end method

.method static synthetic access$200()J
    .locals 2

    .line 32
    sget-wide v0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;)Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mOnLyricsJumpedListener:Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;

    return-object p0
.end method

.method private isRadio(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)Z
    .locals 2

    .line 164
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object p1

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getChild()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 32
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V
    .locals 1

    .line 119
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 120
    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    new-instance v0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$1;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$1;-><init>(Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;I)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onDetached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    :cond_0
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onFocusChanged(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V
    .locals 0

    return-void
.end method

.method public onMediaChangeObservableChanged(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-ne v0, p1, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 157
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 158
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 159
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mDuration:J

    .line 160
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->isRadio(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mIsRadio:Z

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4

    .line 66
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mIsRadio:Z

    .line 68
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    .line 69
    iget-wide v2, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mMediaId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 70
    iput-wide v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mMediaId:J

    .line 71
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    .line 72
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    .line 73
    sput-wide v0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mDuration:J

    goto :goto_0

    :cond_0
    const-string v0, "android.media.metadata.DURATION"

    .line 75
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mDuration:J

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v0

    .line 86
    sget-wide v2, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mDuration:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    .line 87
    sput-wide v0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mDuration:J

    :cond_1
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
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

.method public setOnLyricsJumpedListener(Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;->mOnLyricsJumpedListener:Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder$OnLyricsJumpedListener;

    return-void
.end method
