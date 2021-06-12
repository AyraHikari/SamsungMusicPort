.class public Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Dlna"

.field private static final TAG:Ljava/lang/String; = "SV-Dlna"


# instance fields
.field private mNeedChangeMute:Z

.field private mOnVolumeListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;

.field private final mSECAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

.field private final mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

.field private final mSmartViewVolumeControlEnabled:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;Z)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mNeedChangeMute:Z

    .line 94
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSECAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    .line 28
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSmartViewVolumeControlEnabled:Z

    .line 29
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSmartViewVolumeControlEnabled:Z

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSECAVPlayerVolumeResponseListener:Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setVolumeResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mOnVolumeListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mNeedChangeMute:Z

    return p0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mNeedChangeMute:Z

    return p1
.end method


# virtual methods
.method public changeMute()V
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSmartViewVolumeControlEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mNeedChangeMute:Z

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->changeMute()V

    return-void
.end method

.method public getMute()V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSmartViewVolumeControlEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->getMute()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 35
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSmartViewVolumeControlEnabled:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setVolumeResponseListener(Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;)V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSmartViewVolumeControlEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->setMute(Z)V

    return-void
.end method

.method public setOnVolumeListener(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mOnVolumeListener:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController$OnVolumeListener;

    return-void
.end method

.method public volumeDown()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->volumeDown()V

    return-void
.end method

.method public volumeUp()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->mSimpleAVPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->volumeUp()V

    return-void
.end method
