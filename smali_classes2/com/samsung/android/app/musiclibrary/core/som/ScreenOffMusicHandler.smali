.class final Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;
    }
.end annotation


# static fields
.field private static final MSG_SCREEN_OFF:I = 0x1

.field private static final MSG_SCREEN_OFF_TIME_OUT:I = 0x2

.field private static final MSG_SCREEN_ON:I = 0x0

.field private static final SCREEN_OFF_BY_NONE:I = 0x0

.field private static final SCREEN_OFF_BY_TIME_OUT:I = 0x1

.field private static final SCREEN_OFF_DURATION:I = 0x12c

.field private static final SCREEN_OFF_TIME_OUT:I = 0x1388


# instance fields
.field private final mOnAnimationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->mOnAnimationListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;)Ljava/util/List;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->mOnAnimationListeners:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method addOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->mOnAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 117
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOff(Z)V

    goto :goto_3

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->mOnAnimationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;

    .line 113
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;->onScreenOffAnimationEnd(Z)V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->mOnAnimationListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;

    .line 107
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;->onScreenOnAnimationEnd()V

    goto :goto_2

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOffTimeOut()V

    :cond_2
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isGoingToScreenOff()Z
    .locals 1

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method startScreenOff(Z)V
    .locals 3

    .line 70
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 78
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->removeMessages(I)V

    const/4 v1, 0x2

    .line 79
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->removeMessages(I)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 82
    iput p1, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v1, 0x12c

    .line 83
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method startScreenOffTimeOut()V
    .locals 3

    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 91
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->removeMessages(I)V

    const-wide/16 v1, 0x1388

    .line 92
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method startScreenOn()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->mOnAnimationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;

    .line 53
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;->onScreenOnAnimationStart()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 55
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->sendEmptyMessage(I)Z

    return-void
.end method
