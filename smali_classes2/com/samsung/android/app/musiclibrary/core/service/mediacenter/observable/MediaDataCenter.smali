.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;


# instance fields
.field private mActivateCount:I

.field private mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

.field private mPlaybackState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureMusicExtras()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;
    .locals 2

    .line 38
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;-><init>()V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 1

    .line 133
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mActivateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mActivateCount:I

    return-void
.end method

.method public deactivate()V
    .locals 1

    .line 138
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mActivateCount:I

    if-lez v0, :cond_0

    .line 139
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mActivateCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mActivateCount:I

    :cond_0
    return-void
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method

.method public getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->ensureMusicExtras()V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    return-object v0
.end method

.method public getMusicQueue()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mQueue:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mQueue:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mPlaybackState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mPlaybackState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mPlaybackState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .line 145
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mActivateCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-void
.end method

.method public setMusicExtras(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 109
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->ensureMusicExtras()V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setMusicExtras(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    return-void
.end method

.method public setMusicQueue(Ljava/util/List;Landroid/os/Bundle;)V
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

    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mQueue:Ljava/util/List;

    .line 100
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setMusicExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->mPlaybackState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    return-void
.end method
