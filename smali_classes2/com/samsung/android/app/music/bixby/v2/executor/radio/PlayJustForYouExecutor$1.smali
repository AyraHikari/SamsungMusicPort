.class Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;->execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

.field final synthetic c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

.field final synthetic d:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

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
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const-string v0, "PlayJustForYouExecutor"

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive isSigned : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;

    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1;->b:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1;)V

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    const-string v2, "Music_2_3"

    .line 67
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v1

    .line 62
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1;->d:Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;

    const-string v0, "Music_2_1"

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor$1;->c:Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/radio/PlayJustForYouExecutor;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    :goto_0
    return-void
.end method
