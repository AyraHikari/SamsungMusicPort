.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$DesktopModeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .locals 3

    .line 140
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDesktopDockConnectionChanged enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 3

    .line 145
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDesktopModeChanged enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b()V

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->finish()V

    return-void
.end method
