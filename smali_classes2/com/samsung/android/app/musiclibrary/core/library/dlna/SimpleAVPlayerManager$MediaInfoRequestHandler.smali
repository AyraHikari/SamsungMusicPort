.class Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaInfoRequestHandler"
.end annotation


# instance fields
.field private mPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 556
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 557
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;)V
    .locals 0

    .line 551
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;->removeRequest()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;I)V
    .locals 0

    .line 551
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;->requestMediaInfoAgain(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;)V
    .locals 0

    .line 551
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;->requestMediaInfo()V

    return-void
.end method

.method private removeRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 576
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private requestMediaInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 564
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private requestMediaInfoAgain(I)V
    .locals 2

    int-to-long v0, p1

    const/4 p1, 0x0

    .line 572
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 581
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    if-nez p1, :cond_0

    return-void

    .line 584
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$MediaInfoRequestHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->getMediaInfo()V

    return-void
.end method
