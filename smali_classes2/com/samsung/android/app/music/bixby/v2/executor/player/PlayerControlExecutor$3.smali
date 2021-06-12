.class Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Z)Z

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 281
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMetadataChanged() mMetaUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->d(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 6

    .line 286
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 289
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlaybackStateChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->e(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isExplicit()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->f(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    .line 295
    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->f(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v2

    .line 294
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)I

    move-result v0

    .line 296
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v2

    const-string v3, "explicit_option"

    .line 297
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 298
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 299
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlaybackStateChanged() isExplicitOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    const-string v2, "Music_0_14"

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->e(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->e(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void

    :cond_3
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    .line 311
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPlaybackStateChanged() Wait to play..."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v0, "Restart"

    .line 315
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    const-string v2, "Music_18_7"

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->e(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void

    .line 319
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->d(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 320
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onPlaybackStateChanged() Metadata is not updated yet."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v0, "Next"

    .line 323
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 324
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    const-string v2, "Music_18_3"

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->e(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    :cond_7
    const-string v0, "Prev"

    .line 325
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    const-string v2, "Music_18_5"

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->e(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    :cond_8
    :goto_0
    return-void

    :cond_9
    :goto_1
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method
