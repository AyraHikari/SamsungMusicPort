.class Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;->a(Lcom/samsung/android/app/music/model/UserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 164
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v0, "PlayRadio"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "FixedListSeed"

    const-string v1, "Exist"

    const-string v2, "no"

    .line 165
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void

    :cond_0
    const/16 v0, 0x5a

    .line 171
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;->b(Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    .line 173
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;

    iget-object p1, p1, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 154
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 155
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v0, "PlayRadio"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "FixedListSeed"

    const-string v1, "Exist"

    const-string v2, "no"

    .line 156
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3$1;->a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;

    iget-object v0, v0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 151
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3$1;->a(Ljava/lang/String;)V

    return-void
.end method
