.class Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;
.super Ljava/lang/Object;
.source "SoundAliveCompat.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdlSoundAliveCompatImpl"
.end annotation


# instance fields
.field private final mSoundAliveCompat:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;


# direct methods
.method public constructor <init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    new-instance v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl$1;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl$1;-><init>(Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;-><init>(IILcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;->mSoundAliveCompat:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;->mSoundAliveCompat:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    return-void
.end method

.method public set3dEffectPosition(ZD)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;->mSoundAliveCompat:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->set3DEffectPosition(ZD)V

    return-void
.end method
