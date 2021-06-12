.class Lcom/samsung/android/app/music/service/PlayerService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/PlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerService;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "milk_streaming_quality_wifi"

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "milk_streaming_quality_mobile"

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "my_music_mode_option"

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "SV"

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocalMusicModeChanged isOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1, p2}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/music/service/PlayerService;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/service/PlayerService;->b(Lcom/samsung/android/app/music/service/PlayerService;I)V

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/PlayerService;->c(Lcom/samsung/android/app/music/service/PlayerService;)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/PlayerService;->d(Lcom/samsung/android/app/music/service/PlayerService;)V

    .line 244
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/PlayerService;->e(Lcom/samsung/android/app/music/service/PlayerService;)Z

    move-result v1

    if-eq v1, p1, :cond_6

    .line 245
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/music/service/PlayerService;Z)Z

    .line 246
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/PlayerService;->f(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v1

    const/4 v2, 0x5

    new-array p2, p2, [Ljava/lang/String;

    .line 247
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    .line 246
    invoke-interface {v1, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->onCustomEvent(I[Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, "cross_fade"

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/PlayerService;->g(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setCrossFade(I)V

    goto :goto_2

    .line 251
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "SMUSIC-SV"

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LegalInformation.AGREED value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 254
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/PlayerService;->reloadQueue()V

    goto :goto_2

    .line 227
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/PlayerService;->a(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getNextDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 229
    iget-object p2, p1, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isLocal()Z

    move-result p2

    if-nez p2, :cond_6

    .line 230
    iget-object p2, p0, Lcom/samsung/android/app/music/service/PlayerService$1;->a:Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {p2}, Lcom/samsung/android/app/music/service/PlayerService;->b(Lcom/samsung/android/app/music/service/PlayerService;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->requestSetNextDataSourceInBackground(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    :cond_6
    :goto_2
    return-void
.end method
