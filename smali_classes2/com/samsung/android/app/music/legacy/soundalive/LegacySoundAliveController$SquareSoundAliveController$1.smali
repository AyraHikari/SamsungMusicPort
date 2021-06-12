.class Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    const-string v0, "SMUSIC-LegacySoundAlive"

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$SquareSoundAliveController;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - onError() : Unknown reason"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
