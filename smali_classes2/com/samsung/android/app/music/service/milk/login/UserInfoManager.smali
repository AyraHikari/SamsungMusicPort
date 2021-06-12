.class public Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile b:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/samsung/android/app/music/model/UserInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private g:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private final i:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->h:Landroid/os/Handler;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->i:Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/samsung/android/app/music/MusicApplication;->b()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserInfoManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->c:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/samsung/android/app/music/model/UserInfo;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/model/UserInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 86
    :cond_1
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez v0, :cond_2

    .line 87
    sget-object p1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    const-string v0, "It\'s NOT recommended to check user info in non-milk version!!"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    if-nez v0, :cond_3

    .line 92
    new-instance v0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    .line 94
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    const/16 v0, 0x191

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    const/16 v0, 0x192

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    const/16 v0, 0x193

    .line 97
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    const/16 v0, 0x199

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    const/16 v0, 0x194

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)Lcom/samsung/android/app/music/model/UserInfo;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;
    .locals 2

    .line 62
    sget-object v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 69
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1

    if-nez p1, :cond_0

    .line 288
    sget-object p1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    const-string v0, "It\'s tried to set null as user info! convert it to dummy user."

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance p1, Lcom/samsung/android/app/music/model/UserInfo;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->c:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/model/UserInfo;-><init>(Landroid/content/Context;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    .line 293
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private b(Lcom/samsung/android/app/music/model/UserInfo;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/model/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 297
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSignInFailed()Z

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

.method static synthetic c(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private c(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 2

    .line 306
    sget-object v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    const-string v1, "notifyUserInfoChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->h:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$2;-><init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;Lcom/samsung/android/app/music/model/UserInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 2

    .line 325
    sget-object v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    const-string v1, "notifyUserFeatureChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->h:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$3;-><init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;Lcom/samsung/android/app/music/model/UserInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->h:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$4;-><init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;Lcom/samsung/android/app/music/model/UserInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/app/music/model/UserInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    return-object v0
.end method

.method public a(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addUserInfoCallback addListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  size : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V
    .locals 4
    .param p1    # Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;->a(Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 123
    monitor-exit v0

    return-void

    .line 125
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserInfoAsync wait for sign in. status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    .line 126
    invoke-virtual {v3}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Lio/reactivex/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-static {v1}, Lio/reactivex/Observable;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->isSignInFailed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    new-instance v1, Lcom/samsung/android/app/music/service/milk/exception/SignInFailException;

    invoke-direct {v1}, Lcom/samsung/android/app/music/service/milk/exception/SignInFailException;-><init>()V

    invoke-static {v1}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 138
    :cond_1
    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->g()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    .line 139
    sget-object v2, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserInfoAsync wait for sign in. status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    .line 140
    invoke-virtual {v4}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;-><init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;Lio/reactivex/subjects/PublishSubject;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lcom/samsung/android/app/music/service/milk/login/UserInfoCallback;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeUserInfoCallback removeListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  size : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 111
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->i()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->i()I

    :cond_0
    return-void
.end method

.method public c(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;->a(Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 220
    monitor-exit v0

    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSignInFailed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    if-eqz p1, :cond_1

    .line 225
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->j()V

    .line 226
    sget-object p1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLogin  wait for sign in. status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    .line 227
    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_1
    sget-object p1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to requestLogin  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/UserInfo;->getUserStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    sget-object v1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    const-string v2, "requestLogin - but skip  "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    monitor-exit v0

    return-void

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->j()V

    .line 213
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 2

    .line 242
    sget-object p5, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onApiHandled requestId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requestType : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    .line 244
    sget-object p1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    const-string p4, "onApiHandled Intent is empty"

    invoke-static {p1, p4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    if-nez p1, :cond_1

    .line 247
    sget-object p1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    const-string p2, "How sign in proccess starts even though it\'s non-milk version?!"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 251
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->h()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    .line 252
    sget-object p4, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onApiHandled : "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p4, 0x199

    if-eq p2, p4, :cond_4

    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-nez p3, :cond_2

    .line 270
    iget-object p2, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->f:Lcom/samsung/android/app/music/model/UserInfo;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/model/UserInfo;->replaceSubscriptionInfo(Lcom/samsung/android/app/music/model/purchase/SubscriptionInfo;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 272
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d(Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 275
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->e(Lcom/samsung/android/app/music/model/UserInfo;)V

    goto :goto_1

    :pswitch_1
    if-nez p3, :cond_3

    .line 260
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->c(Lcom/samsung/android/app/music/model/UserInfo;)V

    goto :goto_0

    .line 262
    :cond_3
    sget-object p2, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    const-string p3, "notify signin-failed"

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->e(Lcom/samsung/android/app/music/model/UserInfo;)V

    goto :goto_1

    .line 278
    :cond_4
    sget-object p2, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    const-string p3, "SYNC_USER_INFO"

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/model/UserInfo;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 354
    sget-object p2, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    if-eqz p1, :cond_1

    .line 356
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->d:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->h()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    .line 357
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b(Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 358
    sget-object p2, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    const-string v0, "onServiceConnected. notify user already finish sign in process."

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->e(Lcom/samsung/android/app/music/model/UserInfo;)V

    .line 361
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->c(Lcom/samsung/android/app/music/model/UserInfo;)V

    goto :goto_0

    .line 363
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a:Ljava/lang/String;

    const-string p2, "onServiceConnected. sign in process not finished yet."

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
