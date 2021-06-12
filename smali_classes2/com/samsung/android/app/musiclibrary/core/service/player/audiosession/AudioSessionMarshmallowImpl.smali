.class public final Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;


# instance fields
.field private final audioSessionIds:[I

.field private currentIdIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 22
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->audioSessionIds:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public getAudioSessionId()I
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->audioSessionIds:[I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->currentIdIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public setCurrentAudioSessionId(I)V
    .locals 6

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->audioSessionIds:[I

    .line 52
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, v0, v2

    add-int/lit8 v5, v3, 0x1

    if-ne p1, v4, :cond_0

    .line 43
    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->currentIdIndex:I

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUpAudioSessionId(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->audioSessionIds:[I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->currentIdIndex:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->audioSessionIds:[I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->currentIdIndex:I

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result p1

    aput p1, v0, v1

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->audioSessionIds:[I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->currentIdIndex:I

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    :goto_0
    return-void
.end method

.method public setUpNextAudioSessionId(Landroid/media/MediaPlayer;)V
    .locals 4

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->currentIdIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    .line 34
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->audioSessionIds:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 35
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->audioSessionIds:[I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->audioSessionIds:[I

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->currentIdIndex:I

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSessionMarshmallowImpl;->audioSessionIds:[I

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    return-void
.end method
