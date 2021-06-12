.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession$Companion;

.field public static final UNDEFINED_AUDIO_SESSION:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession$Companion;->$$INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession$Companion;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/audiosession/AudioSession$Companion;

    return-void
.end method


# virtual methods
.method public abstract getAudioSessionId()I
.end method

.method public abstract setCurrentAudioSessionId(I)V
.end method

.method public abstract setUpAudioSessionId(Landroid/media/MediaPlayer;)V
.end method

.method public abstract setUpNextAudioSessionId(Landroid/media/MediaPlayer;)V
.end method
