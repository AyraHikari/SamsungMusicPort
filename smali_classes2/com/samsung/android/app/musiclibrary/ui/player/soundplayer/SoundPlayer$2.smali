.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquireStatus(Ljava/lang/String;I)V
    .locals 3

    .line 230
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAcquireStatus() - path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", status : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;->a(Z)V

    .line 241
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->c(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->c(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 236
    :pswitch_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Landroid/net/Uri;Z)V

    .line 237
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;->a(Z)V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$2;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
