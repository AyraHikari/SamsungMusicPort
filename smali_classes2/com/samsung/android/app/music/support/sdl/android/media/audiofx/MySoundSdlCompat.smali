.class public Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;
.super Ljava/lang/Object;
.source "MySoundSdlCompat.java"


# instance fields
.field private final mMySound:Landroid/media/audiofx/MySound;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/audiofx/MySound;

    invoke-direct {v0, p1, p2}, Landroid/media/audiofx/MySound;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;->mMySound:Landroid/media/audiofx/MySound;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;->mMySound:Landroid/media/audiofx/MySound;

    invoke-virtual {v0}, Landroid/media/audiofx/MySound;->release()V

    return-void
.end method

.method public setEnabled(Z)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;->mMySound:Landroid/media/audiofx/MySound;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/MySound;->setEnabled(Z)I

    move-result p1

    return p1
.end method

.method public setGain([I[I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/MySoundSdlCompat;->mMySound:Landroid/media/audiofx/MySound;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/MySound;->setGain([I[I)V

    return-void
.end method
