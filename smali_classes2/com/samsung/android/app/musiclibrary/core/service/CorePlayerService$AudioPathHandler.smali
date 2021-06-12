.class Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioPathHandler"
.end annotation


# static fields
.field private static final AUDIO_PATH_CHANGED:I = 0x0

.field private static final AUDIO_PATH_CHANGED_BT:I = 0x1

.field private static final CHANGE_AUDIO_PATH_TO_BT:I = 0x4

.field private static final CHANGE_AUDIO_PATH_TO_DEVICE:I = 0x3


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1568
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1569
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private notifyAudioPathChangedIntent(ILandroid/content/Context;)V
    .locals 2

    .line 1599
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.action.AUDIO_PATH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "is_bt"

    .line 1606
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1607
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->setSoundPathToBT(Landroid/content/Context;)V

    goto :goto_0

    .line 1610
    :pswitch_1
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->setSoundPathToDevice(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string p1, "is_bt"

    .line 1603
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1615
    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1594
    iget p1, p1, Landroid/os/Message;->what:I

    .line 1595
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->notifyAudioPathChangedIntent(ILandroid/content/Context;)V

    return-void
.end method

.method notifyPathChanged()V
    .locals 3

    const/4 v0, 0x0

    .line 1578
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->removeMessages(I)V

    const-wide/16 v1, 0x1f4

    .line 1579
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method notifyPathChangedToBt()V
    .locals 3

    const/4 v0, 0x1

    .line 1573
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->removeMessages(I)V

    const-wide/16 v1, 0x1f4

    .line 1574
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method notifyPathToBt()V
    .locals 3

    const/4 v0, 0x3

    .line 1588
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->removeMessages(I)V

    const/4 v0, 0x4

    const-wide/16 v1, 0x64

    .line 1589
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method notifyPathToDevice()V
    .locals 3

    const/4 v0, 0x4

    .line 1583
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->removeMessages(I)V

    const/4 v0, 0x3

    const-wide/16 v1, 0x64

    .line 1584
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$AudioPathHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
