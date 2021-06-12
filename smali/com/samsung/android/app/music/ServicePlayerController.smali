.class public Lcom/samsung/android/app/music/ServicePlayerController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 28
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(IIZ)V
    .locals 0

    .line 81
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openQueuePosition(IIZ)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/ServicePlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/ServicePlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->f()V

    .line 89
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->seek(J)J

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/music/ServicePlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    return-void
.end method

.method public b()I
    .locals 1

    .line 33
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->buffering()I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/ServicePlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/ServicePlayerController;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/ServicePlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->d()V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/ServicePlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->c()V

    .line 50
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->togglePlay()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/ServicePlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/ServicePlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->b()V

    :cond_0
    const/4 v0, 0x0

    .line 58
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playPrev(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/ServicePlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/ServicePlayerController;->a:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->a()V

    .line 66
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playNext()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 71
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->rewind()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->forward()V

    return-void
.end method

.method public h()Z
    .locals 1

    .line 38
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isPlaying()Z

    move-result v0

    return v0
.end method
