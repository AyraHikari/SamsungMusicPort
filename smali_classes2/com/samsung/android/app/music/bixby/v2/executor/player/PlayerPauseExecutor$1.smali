.class Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 40
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->pause()V

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v0, 0x0

    const-string v1, "Music_17_3"

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 v0, -0x1

    const-string v1, "Music_17_1"

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 46
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerPauseExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    return-void
.end method
