.class public Lcom/samsung/android/app/music/service/milk/login/LoginManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IDump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/login/LoginManager$LoginFailException;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/android/app/music/model/UserInfo;

.field private d:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

.field private e:Lcom/samsung/android/app/music/service/milk/SABundle;

.field private final f:Ljava/lang/Object;

.field private g:Lio/reactivex/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/PublishSubject<",
            "Lcom/samsung/android/app/music/service/milk/SABundle;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

.field private i:Lcom/samsung/android/app/music/service/milk/LegalManager;

.field private j:Z

.field private final k:Ljava/lang/Object;

.field private l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->j:Z

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->k:Ljava/lang/Object;

    .line 183
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->l:Landroid/util/SparseArray;

    .line 763
    new-instance v0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$17;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->m:Landroid/content/BroadcastReceiver;

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/samsung/android/app/music/service/milk/LegalManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/service/milk/LegalManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->i:Lcom/samsung/android/app/music/service/milk/LegalManager;

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->d:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Lcom/samsung/android/app/music/service/milk/SABundle;)Lcom/samsung/android/app/music/service/milk/SABundle;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->e:Lcom/samsung/android/app/music/service/milk/SABundle;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/LoginManager;
    .locals 2

    .line 107
    sget-object v0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    if-nez v0, :cond_1

    .line 108
    const-class v0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    .line 112
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 114
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Z)Lio/reactivex/Observable;
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Z)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private a(Z)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/service/milk/SABundle;",
            ">;"
        }
    .end annotation

    const-string v0, "LoginManager"

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSABundle renew : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->f:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->e:Lcom/samsung/android/app/music/service/milk/SABundle;

    if-eqz v1, :cond_0

    const-string p1, "LoginManager"

    const-string v1, "getSABundle just return prev SABundle"

    .line 696
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->e:Lcom/samsung/android/app/music/service/milk/SABundle;

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->g:Lio/reactivex/subjects/PublishSubject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->g:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v1}, Lio/reactivex/subjects/PublishSubject;->i()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->g:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v1}, Lio/reactivex/subjects/PublishSubject;->h()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "LoginManager"

    const-string v1, "getSABundle just return prev SABundle"

    .line 701
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->g:Lio/reactivex/subjects/PublishSubject;

    monitor-exit v0

    return-object p1

    .line 704
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "LoginManager"

    const-string v1, "getSABundle return new SABundle"

    .line 705
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->g:Lio/reactivex/subjects/PublishSubject;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 710
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    const-string v1, "access_token"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->h:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/LoginManager$16;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$16;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->a(Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$OnReceiveAccessTokenListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/app/music/service/milk/exception/SACallbackException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 741
    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;->printStackTrace()V

    .line 742
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->g:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 738
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 739
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->g:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    .line 744
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->g:Lio/reactivex/subjects/PublishSubject;

    return-object p1

    .line 704
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private a(IILjava/lang/String;Lcom/samsung/android/app/music/model/PushInfo;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/app/music/model/PushInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 269
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/transport/UserAccountTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserAccountTransport;

    move-result-object p1

    .line 270
    invoke-static {p4}, Lcom/samsung/android/app/music/model/PushInfoArray;->create(Lcom/samsung/android/app/music/model/PushInfo;)Lcom/samsung/android/app/music/model/PushInfoArray;

    move-result-object p4

    const/16 v0, 0x68

    invoke-interface {p1, v0, p3, p4}, Lcom/samsung/android/app/music/network/transport/UserAccountTransport;->a(ILjava/lang/String;Lcom/samsung/android/app/music/model/PushInfoArray;)Lio/reactivex/Observable;

    move-result-object p1

    .line 271
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p3, Lcom/samsung/android/app/music/service/milk/login/LoginManager$3;

    invoke-direct {p3, p0, p2}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$3;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;I)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private a(IIZZ)V
    .locals 2

    const-string v0, "LoginManager"

    const-string v1, "call account sign in"

    .line 336
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/LegalManager;->d()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/LoginManager$6;

    invoke-direct {v1, p0, p4, p3}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$6;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;ZZ)V

    .line 338
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p4

    new-instance v0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$5;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$5;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Z)V

    .line 343
    invoke-virtual {p4, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p3

    .line 358
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p4

    invoke-virtual {p3, p4}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance p4, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;

    invoke-direct {p4, p0, p2, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$4;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;II)V

    invoke-virtual {p3, p4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private a(Landroid/content/Context;IIZZ)V
    .locals 6

    const-string p1, "LoginManager"

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestLogin appId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requestId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " forceLogin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " withLoadSetting : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " renew : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->i:Lcom/samsung/android/app/music/service/milk/LegalManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/LegalManager;->a()V

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->h()Z

    move-result p1

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->i:Lcom/samsung/android/app/music/service/milk/LegalManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/milk/LegalManager;->a(Z)V

    if-eqz p1, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->f()V

    .line 302
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->j()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "LoginManager"

    .line 303
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "requestLogin hasDataConnection is false. mMilkService-"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->d:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->d:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    if-eqz p1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->d:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    const/16 v3, 0x191

    const/4 v4, 0x4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move v1, p2

    move v2, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->a(IIIILandroid/content/Intent;)V

    .line 310
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result p1

    if-nez p1, :cond_2

    .line 311
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/model/UserInfo;->setUserStatus(I)V

    :cond_2
    return-void

    .line 316
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 317
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    const-string v0, "com.sec.android.app.music.KEY_USER_ID"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 325
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(IIZZ)V

    goto :goto_0

    .line 327
    :cond_4
    invoke-direct {p0, p2, p3, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(IILjava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_5
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(II)V

    :goto_0
    return-void
.end method

.method private a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 3

    const-string v0, "LoginManager"

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserInfo pref userInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/model/UserInfo;->updateUserStatus(Landroid/content/Context;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->e:Lcom/samsung/android/app/music/service/milk/SABundle;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/model/UserInfo;->setSAInfo(Lcom/samsung/android/app/music/service/milk/SABundle;)V

    const-string p1, "LoginManager"

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUserInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/service/milk/SABundle;)V
    .locals 4

    .line 749
    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/SABundle;->d()Ljava/lang/String;

    move-result-object v0

    .line 750
    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/SABundle;->e()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LoginManager"

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySATokenReceiveError() errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " errorMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.music.SA_ACCSSTOKEN_EXCEPTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "error_code"

    .line 756
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "error_message"

    .line 757
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 760
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->g:Lio/reactivex/subjects/PublishSubject;

    new-instance v1, Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;

    const-string v2, "SACallback is not success"

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;IILjava/lang/String;Lcom/samsung/android/app/music/model/PushInfo;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(IILjava/lang/String;Lcom/samsung/android/app/music/model/PushInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;IIZZ)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(IIZZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;)Z
    .locals 3

    const-string v0, "LoginManager"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSubscriptionInfo prev userInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/model/UserInfo;->replaceSubscriptionInfo(Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;)Z

    move-result p1

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/UserInfo;->updateUserStatus(Landroid/content/Context;)V

    const-string v0, "LoginManager"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSubscriptionInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;)Z
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Ljava/lang/String;)Z
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "LoginManager"

    .line 837
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SAC_0204"

    .line 838
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SAC_0402"

    .line 839
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    return-object p0
.end method

.method private b(II)V
    .locals 2

    const-string v0, "LoginManager"

    const-string v1, "call device register"

    .line 563
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/LegalManager;->d()Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/LoginManager$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$13;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V

    .line 565
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 570
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$12;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;II)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private b(IILjava/lang/String;)V
    .locals 4

    const-string v0, "LoginManager"

    const-string v1, "call simple sign in"

    .line 442
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LoginManager"

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "access_token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    .line 444
    invoke-static {p3}, Lcom/samsung/android/app/music/util/AES;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/LegalManager;->d()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/LoginManager$11;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$11;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$10;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;II)V

    .line 453
    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$9;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;II)V

    .line 484
    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p3

    new-instance v0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$8;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;II)V

    .line 513
    invoke-virtual {p3, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/service/milk/login/LoginManager$7;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$7;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V

    .line 537
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;Lcom/samsung/android/app/music/service/milk/SABundle;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Lcom/samsung/android/app/music/service/milk/SABundle;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Landroid/content/Context;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    return-object p0
.end method

.method private c()V
    .locals 3

    const-string v0, "LoginManager"

    const-string v1, "initialize is called"

    .line 122
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->h:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    .line 125
    new-instance v0, Lcom/samsung/android/app/music/model/UserInfo;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/model/UserInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.account.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SAMSUNGACCOUNT_SIGNIN_COMPLETED"

    .line 135
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/LegalManager;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->i:Lcom/samsung/android/app/music/service/milk/LegalManager;

    return-object p0
.end method

.method private d()V
    .locals 4

    const-string v0, "LoginManager"

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLoginIfNotInitialized mLoginInitialized["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isSignInFailed [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    .line 212
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/UserInfo;->isSignInFailed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->isSignInFailed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 215
    iput-boolean v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->j:Z

    const-string v2, "LoginManager"

    const-string v3, "requestLoginIfNotInitialized request login"

    .line 216
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "LoginManager"

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLoginIfNotInitialized mLoginInitialized["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ], requestLoin[ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->e()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 218
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private e()V
    .locals 4

    const-string v0, "LoginManager"

    const-string v1, "requestLoginInternal"

    .line 231
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Landroid/content/Context;IIZ)V

    return-void
.end method

.method static synthetic e(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->i()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->f:Ljava/lang/Object;

    return-object p0
.end method

.method private f()V
    .locals 4

    .line 782
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->g()V

    .line 783
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.android.app.music/"

    .line 784
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "milk_delete_account_user_data"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 786
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->a()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/provider/DaoMaster;->a(I)V

    .line 787
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "explicit_option"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 788
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    const-string v1, "com.sec.android.app.music.KEY_USER_ID"

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/service/milk/SABundle;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->e:Lcom/samsung/android/app/music/service/milk/SABundle;

    return-object p0
.end method

.method private g()V
    .locals 9

    .line 792
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    const-string v2, "source_playlist_id IS NOT NULL AND name!=?"

    const-string v3, "FavoriteList#328795!432@1341"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites;->a:Landroid/net/Uri;

    const-string v2, "cp_attrs=? AND modified_state!=?"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const v5, 0x80002

    .line 799
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x1

    .line 800
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v6

    .line 796
    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 801
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v2, "audio_cp_attrs=? AND modified_state!=?"

    new-array v3, v3, [Ljava/lang/String;

    .line 804
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 805
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 801
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 806
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$OnlineSyncInfo;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    .line 807
    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Conflict;->a:Landroid/net/Uri;

    .line 809
    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static synthetic h(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lio/reactivex/subjects/PublishSubject;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->g:Lio/reactivex/subjects/PublishSubject;

    return-object p0
.end method

.method private h()Z
    .locals 7

    .line 814
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 815
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    const-string v2, "com.sec.android.app.music.KEY_ACCOUNT_INFO"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 816
    invoke-static {v0}, Lcom/samsung/android/app/music/util/AES;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "device_user"

    .line 818
    :goto_0
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 819
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    const-string v5, "com.sec.android.app.music.KEY_ACCOUNT_INFO"

    invoke-static {v3, v5, v2}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    const/4 v4, 0x1

    :cond_1
    const-string v3, "LoginManager"

    .line 822
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAccountChanged "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "/ prev : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cur : "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LoginManager"

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "email "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method private i()V
    .locals 4

    const-string v0, "track_type = 1"

    .line 831
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 832
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$DownloadQueue;->a()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 831
    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method static synthetic i(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->e()V

    return-void
.end method

.method static synthetic j(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->d()V

    return-void
.end method

.method private j()Z
    .locals 5

    .line 860
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 862
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 863
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "LoginManager"

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assertNetworkAvailable. pid - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", processState - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    .line 866
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/util/AndroidUtils;->a(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 864
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "LoginManager"

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assertNetworkAvailable. networkInfo - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "LoginManager"

    const-string v1, "release is called"

    .line 143
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->e:Lcom/samsung/android/app/music/service/milk/SABundle;

    .line 145
    new-instance v1, Lcom/samsung/android/app/music/model/UserInfo;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/model/UserInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    .line 146
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->h:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->a()V

    .line 148
    sput-object v0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    .line 149
    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->i:Lcom/samsung/android/app/music/service/milk/LegalManager;

    return-void
.end method

.method public a(II)V
    .locals 3

    const-string v0, "LoginManager"

    const-string v1, "checkSubscriptionUser"

    .line 603
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "LoginManager"

    const-string p2, "skip checkSubscription"

    .line 606
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/UserInfo;->isDrmProductUser()Z

    move-result v0

    .line 612
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/network/transport/UserAccountTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserAccountTransport;

    move-result-object v1

    const/16 v2, 0x69

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/network/transport/UserAccountTransport;->b(I)Lio/reactivex/Observable;

    move-result-object v1

    .line 613
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$14;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;IIZ)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(IILjava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v0, p3}, Lcom/samsung/android/app/music/model/UserInfo;->setAdultCertifyYn(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(IILjava/lang/String;Lcom/samsung/android/app/music/model/PushInfo;)V

    return-void
.end method

.method public a(ILcom/samsung/android/app/music/model/PushInfo;)V
    .locals 2
    .param p2    # Lcom/samsung/android/app/music/model/PushInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "LoginManager"

    const-string v1, "updatePushToken"

    .line 247
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->a()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/LoginManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$2;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;ILcom/samsung/android/app/music/model/PushInfo;)V

    .line 249
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/service/milk/login/LoginManager$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$1;-><init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V

    .line 258
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public a(Landroid/content/Context;IIZ)V
    .locals 6

    const/4 v2, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->a(Landroid/content/Context;IIZZ)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->d:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->i:Lcom/samsung/android/app/music/service/milk/LegalManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/LegalManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/samsung/android/app/music/model/UserInfo;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "LoginManager"

    const-string v1, "dump : LoginManager"

    .line 187
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toString: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->c:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
