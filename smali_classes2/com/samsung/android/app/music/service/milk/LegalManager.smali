.class public Lcom/samsung/android/app/music/service/milk/LegalManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;
    }
.end annotation


# static fields
.field private static b:Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;

.field private c:Z

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;-><init>(Lcom/samsung/android/app/music/service/milk/LegalManager$1;)V

    sput-object v0, Lcom/samsung/android/app/music/service/milk/LegalManager;->b:Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 89
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/LegalManager;->a:Ljava/util/concurrent/ExecutorService;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/LegalManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/LegalManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/LegalManager;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/samsung/android/app/music/service/milk/LegalManager;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/LegalManager;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/milk/LegalManager;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/LegalManager;->d:Landroid/content/Context;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    const-string v0, "LegalManager"

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call UpdateLegalInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LegalManager;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/UserAccountTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserAccountTransport;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/network/transport/UserAccountTransport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/service/milk/LegalManager;->a:Ljava/util/concurrent/ExecutorService;

    .line 196
    invoke-static {p2}, Lio/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/milk/LegalManager;)Lio/reactivex/Observable;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/LegalManager;->f()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 204
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 205
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "LegalManager"

    const-string v1, "observableCheckLegalAgree legal is not agreed"

    .line 207
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/service/milk/LegalManager;->b:Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;

    .line 209
    invoke-static {}, Lcom/samsung/android/app/music/legal/LegalUiManager;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 208
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 210
    sget-object v0, Lcom/samsung/android/app/music/service/milk/LegalManager;->b:Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;->a()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/app/music/service/milk/LegalManager;->b:Lcom/samsung/android/app/music/service/milk/LegalManager$LegalSettingObserver;

    return-object v0
.end method

.method private f()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/LegalInfo;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/LegalManager;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/transport/UserAccountTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserAccountTransport;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/transport/UserAccountTransport;->c(I)Lio/reactivex/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager;->a:Ljava/util/concurrent/ExecutorService;

    .line 189
    invoke-static {v1}, Lio/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/Executor;)Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private g()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->a()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/LegalManager;->c:Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "LegalManager"

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateLegalInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/LegalManager;->g()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/LegalManager$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/LegalManager$4;-><init>(Lcom/samsung/android/app/music/service/milk/LegalManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/LegalManager$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/LegalManager$3;-><init>(Lcom/samsung/android/app/music/service/milk/LegalManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager;->c:Z

    const-string p1, "LegalManager"

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestMarketingAgree : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/LegalManager;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 4

    .line 74
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "update_legal_marketing_agreed"

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->f()Z

    move-result v0

    const-string v1, "LegalManager"

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMarketingAgreement : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0, v1, v1, v0}, Lcom/samsung/android/app/music/service/milk/LegalManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "update_legal_marketing_agreed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    const-string v0, "LegalManager"

    const-string v1, "updateMarketingAgreement >> already updated"

    .line 85
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public c()V
    .locals 2

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/LegalManager;->g()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/LegalManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/LegalManager$2;-><init>(Lcom/samsung/android/app/music/service/milk/LegalManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/LegalManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/LegalManager$1;-><init>(Lcom/samsung/android/app/music/service/milk/LegalManager;)V

    .line 99
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
