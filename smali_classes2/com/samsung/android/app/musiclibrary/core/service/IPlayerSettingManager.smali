.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IDump;


# virtual methods
.method public abstract getActiveQueueType()I
.end method

.method public abstract getAddedSeqQueue()Ljava/lang/String;
.end method

.method public abstract getBargeIn()Z
.end method

.method public abstract getDuplicateOption()Z
.end method

.method public abstract getEdgeLighting()Z
.end method

.method public abstract getFlacSupportNetwork()I
.end method

.method public abstract getForceStreamingPermission()Z
.end method

.method public abstract getLastPlayedSongPosition(J)J
.end method

.method public abstract getListenQuality(I)I
.end method

.method public abstract getLockScreen()Z
.end method

.method public abstract getPlayListId()Ljava/lang/String;
.end method

.method public abstract getPlaySpeed()F
.end method

.method public abstract getQueryKey()Ljava/lang/String;
.end method

.method public abstract getQueue()Ljava/lang/String;
.end method

.method public abstract getQueuePosition()I
.end method

.method public abstract getQueueVersion()J
.end method

.method public abstract getRepeat()I
.end method

.method public abstract getScreenOffMusic()Z
.end method

.method public abstract getShuffle()I
.end method

.method public abstract getSkipSilence()Z
.end method

.method public abstract getSmartVolume()Z
.end method

.method public abstract getSortMode()I
.end method

.method public abstract getStreamingCacheSize()J
.end method

.method public abstract getUnionShuffleRepeat()I
.end method

.method public abstract getUriType()I
.end method

.method public abstract getUserType()I
.end method

.method public abstract isDataUsageAgreed()Z
.end method

.method public abstract isExplicitAllowed()Z
.end method

.method public abstract isLegalAgreed()Z
.end method

.method public abstract isMobileDataOn()Z
.end method

.method public abstract isMyMusicMode()Z
.end method

.method public abstract isStreamingCacheEnabled()Z
.end method

.method public abstract setActiveQueueType(I)V
.end method

.method public abstract setBargeIn(Z)V
.end method

.method public abstract setDuplicateOption(Z)V
.end method

.method public abstract setEdgeLighting(Z)V
.end method

.method public abstract setForceStreamingPermission(Z)V
.end method

.method public abstract setLastPlayedSongInfo(JJ)V
.end method

.method public abstract setLockScreen(Z)V
.end method

.method public abstract setPlayListId(Ljava/lang/String;)V
.end method

.method public abstract setPlaySpeed(F)V
.end method

.method public abstract setQueueInformation(JLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract setQueuePosition(I)V
.end method

.method public abstract setQueueVersion(J)V
.end method

.method public abstract setRepeat(I)V
.end method

.method public abstract setScreenOffMusic(Z)V
.end method

.method public abstract setShuffle(I)V
.end method

.method public abstract setSkipSilence(Z)V
.end method

.method public abstract setSmartVolume(Z)V
.end method

.method public abstract setSortMode(I)V
.end method

.method public abstract setSupportAod(I)V
.end method

.method public abstract setUnionShuffleRepeat(I)V
.end method

.method public abstract startObserving()V
.end method

.method public abstract stopObserving()V
.end method
