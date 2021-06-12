.class final Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$1;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$1;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x5a

    .line 78
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    .line 79
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$1;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$1;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 85
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 86
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v1, "PlayRadio"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    .line 87
    instance-of p1, p1, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$PlaylistNotFoundException;

    if-eqz p1, :cond_0

    const-string p1, "TPOName"

    const-string v1, "Exist"

    const-string v2, "no"

    .line 88
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "SucceedPlaying"

    const-string v1, "Valid"

    const-string v2, "no"

    .line 91
    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$1;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$1;->a(Ljava/lang/String;)V

    return-void
.end method
