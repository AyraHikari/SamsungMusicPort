.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IDump;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueExtraInformation;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueCustomEvent;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$EnqueueAction;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$QueueType;
    }
.end annotation


# static fields
.field public static final EMPTY_PLAYLIST:[J

.field public static final EMPTY_PLAY_ITEMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_POSITION:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 26
    new-array v0, v0, [J

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAYLIST:[J

    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->EMPTY_PLAY_ITEMS:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract disableMode()V
.end method

.method public abstract enableMode()V
.end method

.method public abstract enqueue(ILjava/util/List;ZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;ZI)V"
        }
    .end annotation
.end method

.method public abstract enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V
.end method

.method public abstract getCurAudioId()J
.end method

.method public abstract getCurrentBaseUri()Landroid/net/Uri;
.end method

.method public abstract getCurrentUri()Landroid/net/Uri;
.end method

.method public abstract getExtraInformation(I)Ljava/lang/Object;
.end method

.method public abstract getExtraInformation(II)Ljava/lang/Object;
.end method

.method public abstract getExtras()Landroid/os/Bundle;
.end method

.method public abstract getKeyWord()Ljava/lang/String;
.end method

.method public abstract getMode(I)I
.end method

.method public abstract getNowPlayingListPosition()I
.end method

.method public abstract getPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
.end method

.method public abstract getPrevItem()Landroid/media/session/MediaSession$QueueItem;
.end method

.method public abstract getQueue()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getShuffleMode()I
.end method

.method public abstract getSortMode()I
.end method

.method public abstract getUnionMode()I
.end method

.method public abstract getUriType()I
.end method

.method public abstract loadSavedValues(Z)V
.end method

.method public abstract movePosition(II)V
.end method

.method public abstract moveQueueItem(II)V
.end method

.method public abstract moveToNext(ZZ)V
.end method

.method public abstract moveToPrev()V
.end method

.method public abstract moveToQueueItem(JI)V
.end method

.method public abstract onCustomEvent(ILandroid/os/Bundle;)V
.end method

.method public varargs abstract onCustomEvent(I[Ljava/lang/String;)V
.end method

.method public abstract reloadAudioIds()V
.end method

.method public abstract reloadMeta()V
.end method

.method public abstract reloadQueue(Z)V
.end method

.method public abstract removeTracks([J)V
.end method

.method public abstract removeTracksPositions([I)V
.end method

.method public abstract setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V
.end method

.method public abstract setMode(II)V
.end method

.method public abstract setQueueChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/queue/OnQueueChangedListener;)V
.end method

.method public abstract setRepeatMode(I)V
.end method

.method public abstract setShuffleMode(I)V
.end method

.method public abstract setSortMode(I)V
.end method

.method public abstract toggleMode(I)I
.end method
