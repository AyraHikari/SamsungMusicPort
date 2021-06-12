.class public final Lcom/samsung/android/app/music/list/sync/ListSyncManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;,
        Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

.field private static final j:Lkotlin/Lazy;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

.field private d:Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;

.field private e:Z

.field private f:Ljava/lang/Boolean;

.field private g:Z

.field private final h:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

.field private final i:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    .line 190
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion$instance$2;->INSTANCE:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion$instance$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->j:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$networkListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$networkListener$1;-><init>(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)V

    check-cast v0, Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->h:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    .line 48
    new-instance v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager$settingObserver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$settingObserver$1;-><init>(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->i:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Lcom/samsung/android/app/music/network/NetworkManagerImpl;
    .locals 1

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->c:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-nez p0, :cond_0

    const-string v0, "networkManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/sync/ListSyncManager;Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->d:Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/sync/ListSyncManager;Ljava/lang/Boolean;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->f:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/list/sync/ListSyncManager;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "1"

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/sync/ListSyncManager;Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->g:Z

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->i:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Landroid/content/Context;
    .locals 1

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->b:Landroid/content/Context;

    if-nez p0, :cond_0

    const-string v0, "context"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    .line 18
    sget-object v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->j:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final d()Lcom/samsung/android/app/music/list/sync/ListSyncManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->a()Lcom/samsung/android/app/music/list/sync/ListSyncManager;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Ljava/lang/Boolean;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method private final e()Z
    .locals 3

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v2, "context"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->e:Z

    return p0
.end method

.method private final f()Z
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->c:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-nez v0, :cond_0

    const-string v1, "networkManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/list/sync/ListSyncManager;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->g:Z

    return p0
.end method

.method private final g()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->d:Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SyncThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 80
    new-instance v1, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;-><init>(Lcom/samsung/android/app/music/list/sync/ListSyncManager;Landroid/os/HandlerThread;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->d:Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 89
    sget-object v0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    const-string v1, "onLogin()"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 90
    invoke-static {p0, v0, v1, v0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    const-string v2, "init()"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->b:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->c:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 66
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->c:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-nez p1, :cond_0

    const-string v0, "networkManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a()V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->c:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-nez p1, :cond_1

    const-string v0, "networkManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->c()V

    .line 68
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->c:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-nez p1, :cond_2

    const-string v0, "networkManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->h:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 70
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->g:Z

    .line 71
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->i:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v1, "my_music_mode_option"

    const/4 v2, 0x1

    .line 72
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 10

    const-string v0, "syncType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->g()V

    .line 96
    sget-object v1, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync start, syncType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pendingSync="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->e:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 96
    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 102
    sget-object v2, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sync failed. isLogIn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", myMusicMode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", networkConnected="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->c:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-nez v0, :cond_0

    const-string v3, "networkManager"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->a(Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V

    .line 103
    iput-boolean v1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->e:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->e:Z

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const-string v2, "2"

    .line 109
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->d:Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;

    if-eqz p1, :cond_4

    .line 126
    check-cast v0, Ljava/lang/Iterable;

    .line 225
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 127
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->a(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 131
    :cond_3
    sget-object v3, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->a:Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync(type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") ignored since it\'s running now"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;->b(Lcom/samsung/android/app/music/list/sync/ListSyncManager$Companion;Ljava/lang/String;IZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/list/sync/ListSyncManager;->d:Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/sync/ListSyncManager$WorkerHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
