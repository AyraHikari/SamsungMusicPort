.class public Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;,
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;,
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;,
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;,
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Dlna"

.field private static final TAG:Ljava/lang/String; = "SV-Dlna"

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private final mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

.field private mAVPlayerPositionInMillis:J

.field private mAVPlayerState:I

.field private mDoNotUpdateProgress:Z

.field private final mDrmChecker:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

.field private mDuration:J

.field private mItem:Lcom/samsung/android/allshare/Item;

.field private final mMediaInfoRequestHandler:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;

.field private mOnCompletionListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

.field private final mOnDeviceErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;

.field private mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

.field private mOnMediaInfoListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;

.field private mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

.field private final mSECAVPlayerStateListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

.field private mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;Landroid/os/Looper;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDoNotUpdateProgress:Z

    const-wide/16 v0, -0x1

    .line 55
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDuration:J

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerPositionInMillis:J

    .line 354
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    .line 463
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSECAVPlayerStateListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    .line 543
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnDeviceErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;

    .line 75
    new-instance v0, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

    invoke-direct {v0, p1}, Lcom/samsung/android/allshare/extension/RemoteDrmChecker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDrmChecker:Lcom/samsung/android/allshare/extension/RemoteDrmChecker;

    .line 76
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSECAVPlayerStateListener:Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setSmartAVPlayerEventListener(Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;)V

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerPlaybackResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V

    .line 79
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnDeviceErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setOnDeviceErrorListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;)V

    .line 80
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mMediaInfoRequestHandler:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;

    const-string p1, "SV-Dlna"

    .line 81
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SimpleAVPlayerManager Player: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDoNotUpdateProgress:Z

    return p0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDoNotUpdateProgress:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerPositionInMillis:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnCompletionListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Lcom/samsung/android/allshare/ERROR;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->handleError(Lcom/samsung/android/allshare/ERROR;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    return p0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->onStateChanged(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;Lcom/samsung/android/allshare/ERROR;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->onPlayResponseReceivedError(Lcom/samsung/android/allshare/ERROR;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;J)J
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDuration:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mMediaInfoRequestHandler:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/allshare/Item;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mItem:Lcom/samsung/android/allshare/Item;

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnMediaInfoListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;

    return-object p0
.end method

.method private getItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/allshare/Item;
    .locals 1

    const-string v0, "content://"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance p2, Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string v0, "http://"

    .line 141
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    new-instance v0, Lcom/samsung/android/allshare/Item$WebContentBuilder;

    .line 144
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, p1, p3}, Lcom/samsung/android/allshare/Item$WebContentBuilder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {v0, p2}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder;

    .line 148
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v0, "file%3A"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v0, "file://"

    .line 154
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    :cond_4
    :goto_0
    new-instance v0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    invoke-direct {v0, p1, p3}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 159
    invoke-virtual {v0, p2}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->setTitle(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    .line 161
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 262
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1

    const/4 v0, 0x3

    .line 347
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    .line 348
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->onStateChanged(I)V

    .line 350
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->onError(Lcom/samsung/android/allshare/ERROR;)V

    return-void
.end method

.method private onError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 3

    const-string v0, "SMUSIC-SV-Dlna"

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mOnErrorListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    .line 308
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_STATE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 310
    :cond_1
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 312
    :cond_2
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->CONTENT_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 313
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;->onError(I)V

    goto :goto_2

    .line 315
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;->onError(I)V

    goto :goto_2

    .line 311
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;->onError(I)V

    goto :goto_2

    .line 309
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;->onError(I)V

    :goto_2
    return-void
.end method

.method private onPlayResponseReceivedError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 3

    const-string v0, "SMUSIC-SV-Dlna"

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayResponseReceivedError error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mOnErrorListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    .line 326
    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_STATE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 328
    :cond_1
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0, p1}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 331
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;->onPlayResponseReceivedError(I)V

    goto :goto_2

    .line 329
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;->onPlayResponseReceivedError(I)V

    goto :goto_2

    .line 327
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;->onPlayResponseReceivedError(I)V

    :goto_2
    return-void
.end method

.method private onStateChanged(I)V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mOnStateChangedListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;->onStateChanged(I)V

    :cond_0
    return-void
.end method

.method private resetDuration()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 287
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDuration:J

    return-void
.end method

.method private start(Lcom/samsung/android/allshare/Item;J)Z
    .locals 5

    const-string v0, "SV-Dlna"

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "msec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-SV-Dlna"

    const-string p2, "mSimpleAVPlayer is null. Please check your routine."

    .line 170
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 173
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const-string p2, "SMUSIC-SV-Dlna"

    .line 176
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " nextItem: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 179
    :cond_1
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->resetDuration()V

    const-wide/16 v0, 0x0

    cmp-long v3, p2, v0

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    move-wide p2, v0

    .line 181
    :goto_0
    iput-wide p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerPositionInMillis:J

    .line 182
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mItem:Lcom/samsung/android/allshare/Item;

    .line 184
    new-instance p2, Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    invoke-direct {p2}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;-><init>()V

    .line 185
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerPositionInMillis:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->setStartingPosition(J)Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    .line 186
    invoke-virtual {p2}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->build()Lcom/samsung/android/allshare/media/ContentInfo;

    move-result-object p2

    .line 188
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->play(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;)V

    .line 189
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    .line 190
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->onStateChanged(I)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getCurrentPosition()J
    .locals 2

    .line 273
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerPositionInMillis:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 283
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDuration:J

    return-wide v0
.end method

.method public pause()V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "SMUSIC-SV-Dlna"

    const-string v1, "Current state is paused so ignore this."

    .line 230
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->pause()V

    return-void
.end method

.method public play(Landroid/net/Uri;J)Z
    .locals 2

    .line 110
    new-instance v0, Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->start(Lcom/samsung/android/allshare/Item;J)Z

    move-result p1

    return p1
.end method

.method public play(Ljava/lang/String;J)Z
    .locals 0

    .line 120
    invoke-static {p1}, Lcom/samsung/android/allshare/extension/ItemExtractor;->create(Ljava/lang/String;)Lcom/samsung/android/allshare/Item;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->start(Lcom/samsung/android/allshare/Item;J)Z

    move-result p1

    return p1
.end method

.method public play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->getItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/allshare/Item;

    move-result-object p1

    invoke-direct {p0, p1, p4, p5}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->start(Lcom/samsung/android/allshare/Item;J)Z

    move-result p1

    return p1
.end method

.method public releaseSecAVPlayer()V
    .locals 4

    const-string v0, "SV-Dlna"

    const-string v1, "releaseSecAVPlayer is called."

    .line 88
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    .line 90
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->onStateChanged(I)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setSmartAVPlayerEventListener(Lcom/samsung/android/allshare/extension/SECAVPlayer$ISECAVPlayerStateListener;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setOnDeviceErrorListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer$OnDeviceErrorListener;)V

    .line 95
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mMediaInfoRequestHandler:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;)V

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->resetDuration()V

    const-wide/16 v2, 0x0

    .line 99
    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerPositionInMillis:J

    .line 100
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mItem:Lcom/samsung/android/allshare/Item;

    return-void
.end method

.method public resume()V
    .locals 5

    const-string v0, "SV-Dlna"

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resume state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SMUSIC-SV-Dlna"

    const-string v1, "Current state is playing so ignore this."

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 245
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mItem:Lcom/samsung/android/allshare/Item;

    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerPositionInMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerPositionInMillis:J

    :cond_1
    invoke-direct {p0, v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->start(Lcom/samsung/android/allshare/Item;J)Z

    goto :goto_0

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->resume()V

    :goto_0
    return-void
.end method

.method public seek(J)V
    .locals 4

    const-string v0, "SV-Dlna"

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek targetTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mDoNotUpdateProgress:Z

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v0

    .line 220
    :goto_0
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerPositionInMillis:J

    .line 221
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerPositionInMillis:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->seek(J)V

    return-void
.end method

.method public setOnCompletionListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnCompletionListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;)V
    .locals 0

    .line 645
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnErrorListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;

    return-void
.end method

.method public setOnMediaInfoListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;)V
    .locals 0

    .line 668
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnMediaInfoListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;

    return-void
.end method

.method public setOnStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mOnStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;

    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "SV-Dlna"

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->stop()V

    const/4 v0, 0x3

    .line 205
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    .line 206
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mAVPlayerState:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->onStateChanged(I)V

    :cond_1
    return-void
.end method

.method public supportSeekOnPausedState()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->isSeekableOnPaused()Z

    move-result v0

    return v0
.end method
