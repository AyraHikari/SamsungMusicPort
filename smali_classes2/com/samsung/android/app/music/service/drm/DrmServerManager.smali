.class public final Lcom/samsung/android/app/music/service/drm/DrmServerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;


# static fields
.field private static final a:Ljava/lang/String; = "DrmServerManager"

.field private static final b:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

.field private static d:Ljava/lang/String;


# instance fields
.field private volatile c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    .locals 1

    .line 29
    const-class v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-enter v0

    .line 30
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->d(Landroid/content/Context;)V

    .line 31
    sget-object p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a()V
    .locals 2

    .line 54
    const-class v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->restartServer()V

    .line 58
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->killServer()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    .line 128
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->a:Ljava/lang/String;

    const-string v1, "createInternal : Milk controller"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/samsung/android/app/music/service/drm/MilkDrmController;

    invoke-direct {v1, p1, p2, v0}, Lcom/samsung/android/app/music/service/drm/MilkDrmController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmController;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmServerManager;
    .locals 1

    .line 36
    const-class v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-enter v0

    .line 37
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->d(Landroid/content/Context;)V

    .line 38
    sget-object p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    iget-object p0, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isAlive()Z

    move-result p0

    if-nez p0, :cond_0

    .line 39
    sget-object p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    iget-object p0, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->acquireServer()V

    .line 41
    :cond_0
    sget-object p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b()V
    .locals 3

    .line 62
    const-class v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->killServer()V

    .line 65
    sget-object v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    .line 67
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "com.sec.samsung.music.app.KEY_MILK_DRM_SUBSCRIPTION_ORDERID"

    const/4 v1, 0x0

    .line 72
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3

    .line 105
    sget-object v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->b:Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    .line 106
    iget-object v1, v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    if-nez v1, :cond_0

    .line 107
    invoke-static {p0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 111
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->getClientId()Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {p0}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V
    .locals 2

    .line 88
    const-class v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->close(Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;)V

    .line 92
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 78
    const-class v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-enter v0

    .line 79
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 80
    sput-object p2, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->d:Ljava/lang/String;

    .line 81
    invoke-static {p1}, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->d(Landroid/content/Context;)V

    .line 82
    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->open(Landroid/content/Context;Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/core/service/drm/IDrmContent;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unacquire()V
    .locals 2

    .line 97
    const-class v0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/service/drm/DrmServerManager;->c:Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->unacquireServer()V

    .line 101
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
