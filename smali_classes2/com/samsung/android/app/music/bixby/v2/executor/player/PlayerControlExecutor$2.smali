.class Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


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

    .line 238
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 5

    .line 241
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceMetaReceived()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    const-string v1, "Music_18_1"

    invoke-static {v0, v2, v1, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void

    .line 248
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    const-string v1, "Music_18_2"

    invoke-static {v0, v2, v1, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;ZLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x5b5cca11

    if-eq v3, v4, :cond_4

    const v4, 0x24ff13

    if-eq v3, v4, :cond_3

    const v2, 0x261653

    if-eq v3, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "Prev"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "Next"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_4
    const-string v2, "Restart"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 265
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Wrong param."

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 262
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->d(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_2

    .line 258
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_2

    .line 255
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor$2;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerControlExecutor;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
