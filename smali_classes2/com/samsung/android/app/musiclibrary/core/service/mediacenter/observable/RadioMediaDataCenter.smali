.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;
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

.field private static volatile sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;


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

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureMusicExtras()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    const-string v1, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;
    .locals 2

    .line 34
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;-><init>()V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    .line 39
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 41
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    return-object v0
.end method


# virtual methods
.method public activate()V
    .locals 1

    .line 130
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mActivateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mActivateCount:I

    return-void
.end method

.method public deactivate()V
    .locals 1

    .line 135
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mActivateCount:I

    if-lez v0, :cond_0

    .line 136
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mActivateCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mActivateCount:I

    :cond_0
    return-void
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method

.method public getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->ensureMusicExtras()V

    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

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

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mQueue:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mQueue:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mPlaybackState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mPlaybackState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mPlaybackState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    return-object v0
.end method

.method public isActivated()Z
    .locals 1

    .line 142
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mActivateCount:I

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

    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-void
.end method

.method public setMusicExtras(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->ensureMusicExtras()V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setMusicExtras(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mMusicExtras:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

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

    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mQueue:Ljava/util/List;

    .line 99
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->setMusicExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method public setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->mPlaybackState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    return-void
.end method
