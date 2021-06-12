.class final Lcom/samsung/android/app/music/player/fullplayer/FullPlayer$CommandExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CommandExecutor"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;)V
    .locals 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewTypeController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 927
    invoke-static {}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayer;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Music"

    goto :goto_0

    :cond_0
    const-string v1, "GlobalMusic"

    :goto_0
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    const/4 v3, 0x0

    .line 928
    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;

    move-object v5, p1

    check-cast v5, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayControllerExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 929
    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerRepeatExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerRepeatExecutor;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 930
    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ChangePlayerShuffleExecutor;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 931
    new-instance v4, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;

    invoke-direct {v4, v0, p2}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/ShowPlayerLyricsExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/player/fullplayer/FullViewTypeController;)V

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v4, v2, v3

    const/4 p2, 0x4

    .line 932
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/SongTitleExecutor;

    invoke-direct {v3, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/SongTitleExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, p2

    const/4 p2, 0x5

    .line 933
    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;

    invoke-direct {v3, v0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v3, v2, p2

    .line 926
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_1
    return-void
.end method
