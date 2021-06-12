.class public Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;
    }
.end annotation


# static fields
.field private static final HEADSET_HOOK_CLICK_INTERVAL:I = 0x12c


# instance fields
.field private mHeadsetHookClickCount:I

.field private mOnMultipleKeyListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    return-void
.end method


# virtual methods
.method public getClickCount()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const-string p1, "SMUSIC-SV"

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeadsetHookClickHandler - click count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mOnMultipleKeyListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;

    if-eqz p1, :cond_1

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mOnMultipleKeyListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;->onDoubleClicked()V

    goto :goto_0

    .line 57
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mOnMultipleKeyListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;

    if-eqz p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mOnMultipleKeyListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;->onTripleClicked()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    return-void
.end method

.method public increaseCount()V
    .locals 3

    .line 40
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->removeMessages(I)V

    .line 42
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const-wide/16 v1, 0x0

    .line 43
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x12c

    .line 45
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public setMultipleKeyClickListener(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mOnMultipleKeyListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;

    return-void
.end method
