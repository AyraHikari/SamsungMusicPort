.class final Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final ACTIVE_TIME:I = 0xbb8


# instance fields
.field private mIsBackgroundUserRequest:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->mIsBackgroundUserRequest:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->mIsBackgroundUserRequest:Z

    return-void
.end method

.method isUserAction()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->mIsBackgroundUserRequest:Z

    return v0
.end method

.method setUserAction(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->mIsBackgroundUserRequest:Z

    return-void
.end method

.method setUserActionActive()V
    .locals 3

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->mIsBackgroundUserRequest:Z

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->removeMessages(I)V

    const-wide/16 v1, 0xbb8

    .line 33
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/UserActionChecker;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
