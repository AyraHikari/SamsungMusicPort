.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;


# instance fields
.field private audioSessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionImpl;->audioSessionId:I

    return-void
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionImpl;->audioSessionId:I

    return v0
.end method

.method public setCurrentAudioSessionId(I)V
    .locals 0

    return-void
.end method

.method public setUpAudioSessionId(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionImpl;->audioSessionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionImpl;->audioSessionId:I

    goto :goto_0

    .line 17
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionImpl;->audioSessionId:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    :goto_0
    return-void
.end method

.method public setUpNextAudioSessionId(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionImpl;->audioSessionId:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    return-void
.end method
