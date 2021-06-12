.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputPreventHandler"
.end annotation


# static fields
.field private static final BLOCK_TIME_INTERVAL:I = 0x3e8


# instance fields
.field private mIsPrevent:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 648
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->mIsPrevent:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    const/4 p1, 0x0

    .line 663
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->mIsPrevent:Z

    return-void
.end method

.method isPrevent()Z
    .locals 1

    .line 652
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->mIsPrevent:Z

    return v0
.end method

.method setPreventEventForAwhile()V
    .locals 3

    const/4 v0, 0x1

    .line 656
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->mIsPrevent:Z

    const/4 v0, 0x0

    .line 657
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->removeMessages(I)V

    const-wide/16 v1, 0x3e8

    .line 658
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
