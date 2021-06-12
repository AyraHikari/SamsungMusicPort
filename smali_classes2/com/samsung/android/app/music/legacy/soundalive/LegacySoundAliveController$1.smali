.class Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$OnPlayerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmRequest(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onError(IILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    return-void
.end method

.method public onPrepared(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->c()V

    return-void
.end method

.method public onServerDied()V
    .locals 0

    return-void
.end method

.method public onTrackEnded(Z)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController$1;->a:Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/legacy/soundalive/LegacySoundAliveController;->c()V

    return-void
.end method
