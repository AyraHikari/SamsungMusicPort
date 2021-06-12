.class public final Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private mDuration:I

.field private mIsEnabled:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->mIsEnabled:Z

    .line 13
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->mDuration:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->mIsEnabled:Z

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->mIsEnabled:Z

    return v0
.end method

.method public setBlockDuration(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->mDuration:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 29
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->mIsEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 31
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->mDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/ClickEventInterceptor;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
