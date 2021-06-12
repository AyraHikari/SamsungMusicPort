.class Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetailGetter$OnTrackDetailUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;)V
    .locals 5

    .line 112
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUpdated()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const-string p1, "CurrentSongInfo"

    const-string v2, "Exist"

    const-string v3, "no"

    .line 115
    invoke-virtual {v0, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/PlayerMilkTrackDetail;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 122
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 123
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/base/ArtistModel;

    .line 124
    invoke-static {}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a()Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ActivityRequesterFactory;->b()Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;

    .line 125
    invoke-static {v3}, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->c(Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;)Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/browse/BrowseLauncher$ArtistActivityRequester;->a(Landroid/app/Activity;)V

    const-string v2, "ArtistName"

    const-string v3, "Exist"

    const-string v4, "yes"

    .line 127
    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ArtistName"

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 129
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setResultParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;

    invoke-static {v2}, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v3, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    .line 132
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdated() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/ArtistModel;->getArtistName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "ArtistInformation"

    const-string v2, "Exist"

    const-string v3, "no"

    .line 136
    invoke-virtual {v0, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    .line 139
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v1/executor/player/kr/LaunchArtistDetailExecutor;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onUpdated() - Artist Detail is not available"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
