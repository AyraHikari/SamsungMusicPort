.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getOrderedPosition(I)I
.end method

.method public abstract getQueuePosition(I)I
.end method

.method public abstract isAvailableNetwork()Z
.end method

.method public abstract isMyMusicMode()Z
.end method

.method public abstract isShuffleEnabled()Z
.end method

.method public abstract removeItems([I)V
.end method

.method public abstract reorder(II)V
.end method

.method public abstract setAvailableNetwork(Z)V
.end method

.method public abstract setExtra(Landroid/os/Bundle;)V
.end method

.method public abstract setMyMusicMode(Z)V
.end method

.method public abstract setSupportLocalMode(Z)V
.end method
