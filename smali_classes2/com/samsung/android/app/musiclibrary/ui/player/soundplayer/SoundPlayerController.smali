.class public Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(IIZ)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(J)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    return-void
.end method

.method public b()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->l()I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->d()V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->c()V

    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->i()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->b()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->e()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->b:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->a()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->g()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->f()V

    return-void
.end method

.method public h()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j()Z

    move-result v0

    return v0
.end method
