.class public final Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/v2/CommandExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$GetRadioCountException;,
        Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$DeviceUserException;,
        Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$StreamingUserException;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "RadioCountExecutor"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b()Lio/reactivex/Observable;

    move-result-object v0

    .line 82
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$3;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;Landroid/content/Context;)V

    .line 83
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;)V

    .line 93
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public execute(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Command;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez p2, :cond_0

    .line 36
    sget-object p1, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;->a:Ljava/lang/String;

    const-string p2, "execute() - Cannot perform because false support milk feature."

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    const/4 p2, -0x1

    const-string v0, "Music_0_8"

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    return-void

    .line 42
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$1;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/executor/radio/RadioCountExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
