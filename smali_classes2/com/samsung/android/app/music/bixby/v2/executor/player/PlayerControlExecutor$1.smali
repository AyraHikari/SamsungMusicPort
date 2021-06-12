.class Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field final synthetic c:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$1;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$1;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 4
    .param p1    # Lcom/samsung/android/app/music/model/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$1;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    .line 209
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UserInfoReceiver isStreamingUser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isRadio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 215
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$1;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$1;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_2

    .line 217
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$1;->c:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    const-string v0, "Music_18_8"

    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$1;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$1;->b:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-static {p1, v1, v0, v2, v3}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    :goto_2
    return-void
.end method
