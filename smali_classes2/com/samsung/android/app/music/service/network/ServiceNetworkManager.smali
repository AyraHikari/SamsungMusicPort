.class public final Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

.field private c:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private final i:Landroid/content/BroadcastReceiver;

.field private final j:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->d:Z

    .line 151
    new-instance v0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$1;-><init>(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->i:Landroid/content/BroadcastReceiver;

    .line 158
    new-instance v0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$2;-><init>(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->j:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->m()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    return-object p0
.end method

.method private e()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->e:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private f()V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->d:Z

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->k()V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->d:Z

    :cond_0
    return-void
.end method

.method private g()V
    .locals 6

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->f()V

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 111
    iget-wide v2, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->h:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 116
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->h:J

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->h()V

    .line 118
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->e:Z

    if-nez v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->i()V

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->j()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->e:Z

    return-void
.end method

.method private i()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->b:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isMobileDataOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->g:Z

    return-void
.end method

.method private j()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isActiveMobileConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->f:Z

    return-void
.end method

.method private k()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->i:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->j:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->j:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    return-void
.end method

.method private m()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->c:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->c:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->e()Z

    move-result v0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->g()V

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->e()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->c:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->c:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;)V
    .locals 1

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->c:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->b()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$OnNetworkStateChangedListener;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->g()V

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->e()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->f()V

    .line 87
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->j()V

    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->f:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->f()V

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->h()V

    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->e:Z

    return v0
.end method

.method public release()V
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->d:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->l()V

    :cond_0
    return-void
.end method
