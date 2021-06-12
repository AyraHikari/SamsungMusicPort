.class public final Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar$OnMusicSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/support/v7/widget/SeslSeekBar;IZ)V
    .locals 1

    .line 211
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->b(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_2

    .line 214
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->SUPPORT_FW_FINE_VOLUME:Z

    if-eqz p1, :cond_1

    .line 215
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;I)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->c(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object p1

    const-string v0, "audioManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->setVolume(I)V

    .line 218
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->d(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;->a()V

    .line 220
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->b(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;I)V

    .line 222
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {p1, p3}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;Z)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/support/v7/widget/SeslSeekBar;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->d(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;->b(Z)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/support/v7/widget/SeslSeekBar;)V
    .locals 2

    .line 230
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->d(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;->b(Z)V

    .line 231
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    const-string v1, "0"

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;Ljava/lang/String;)V

    .line 232
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;Z)V

    .line 235
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->f(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$createVolumeSeekBar$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->d()V

    :cond_0
    return-void
.end method
