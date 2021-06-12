.class Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/model/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "FindOnlinePlaylistExecutor"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive isSigned : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;->a()Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 150
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3$1;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;)V

    .line 151
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 177
    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    const-string v0, "PlayRadio"

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;-><init>(Ljava/lang/String;)V

    const-string v0, "SamsungAccount"

    const-string v1, "Exist"

    const-string v2, "no"

    .line 178
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor$3;->a:Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;->a(Lcom/samsung/android/app/music/bixby/v1/executor/browse/FindOnlinePlaylistExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V

    :goto_0
    return-void
.end method
