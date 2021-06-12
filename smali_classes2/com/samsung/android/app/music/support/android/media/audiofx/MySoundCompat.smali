.class public Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mMySoundSdlCompat:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;->mMySoundSdlCompat:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;->mMySoundSdlCompat:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;

    :goto_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;->mMySoundSdlCompat:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;->mMySoundSdlCompat:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;->release()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;->mMySoundSdlCompat:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;->mMySoundSdlCompat:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;->setEnabled(Z)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setGain([I[I)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;->mMySoundSdlCompat:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/MySoundCompat;->mMySoundSdlCompat:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;->setGain([I[I)V

    :cond_0
    return-void
.end method
