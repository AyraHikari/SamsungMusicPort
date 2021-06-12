.class public Lcom/samsung/android/app/music/network/NetworkManagerImpl;
.super Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/NetworkManagerImpl$Companion;
    }
.end annotation


# static fields
.field public static final b:Lcom/samsung/android/app/music/network/NetworkManagerImpl$Companion;


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/samsung/android/app/music/network/NetworkInfo;

.field private d:Z

.field private e:Z

.field private final f:Lcom/samsung/android/app/music/network/NetworkManagerImpl$networkChangeReceiver$1;

.field private final g:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->b:Lcom/samsung/android/app/music/network/NetworkManagerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacksAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->h:Landroid/content/Context;

    .line 22
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a:Ljava/util/HashSet;

    .line 23
    new-instance p1, Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-direct {p1}, Lcom/samsung/android/app/music/network/NetworkInfo;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->c:Lcom/samsung/android/app/music/network/NetworkInfo;

    .line 28
    new-instance p1, Lcom/samsung/android/app/music/network/NetworkManagerImpl$networkChangeReceiver$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl$networkChangeReceiver$1;-><init>(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->f:Lcom/samsung/android/app/music/network/NetworkManagerImpl$networkChangeReceiver$1;

    .line 40
    new-instance p1, Lcom/samsung/android/app/music/network/NetworkManagerImpl$settingObserver$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl$settingObserver$1;-><init>(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    iput-object p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->g:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/network/NetworkManagerImpl;Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->e:Z

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->d:Z

    return p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->c:Lcom/samsung/android/app/music/network/NetworkInfo;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/network/NetworkManagerImpl;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->d()V

    return-void
.end method

.method private final d()V
    .locals 3

    const-string v0, "NetworkManagerImpl"

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChanged() | pendingNotifyStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a:Ljava/util/HashSet;

    check-cast v0, Ljava/lang/Iterable;

    .line 146
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    .line 137
    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->c:Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;->a(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->f:Lcom/samsung/android/app/music/network/NetworkManagerImpl$networkChangeReceiver$1;

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->g:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "mobile_data"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    return-void
.end method

.method protected a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 9

    const-string v0, "networkInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->b(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_2

    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    :pswitch_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    .line 122
    :goto_2
    iget-object v6, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->b:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v7

    const-string v8, "mobile_data"

    invoke-virtual {v7, v8, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    .line 123
    iget-object v6, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->c:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iput-boolean v3, v6, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    .line 124
    iget-object v3, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->d:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iput-boolean v4, v3, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    .line 125
    iget-object v3, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->e:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iput-boolean v5, v3, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    .line 127
    iget-object v3, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-object v4, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->c:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v4, v4, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-nez v4, :cond_3

    iget-object v4, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->e:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v4, v4, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-nez v4, :cond_3

    iget-object v4, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->b:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v4, v4, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->d:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v4, v4, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_3
    iput-boolean v1, v3, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    const-string v1, "NetworkManagerImpl"

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkState() | connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v3, v3, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | wifi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->c:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v3, v3, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | mobileData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->d:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v3, v3, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | etc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->e:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v3, v3, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | appSettings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->b:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v3, v3, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " | networkInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " | type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    if-eqz p1, :cond_5

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_5
    const-string p1, "NONE"

    :goto_4
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->c:Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;->a(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 4

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->f:Lcom/samsung/android/app/music/network/NetworkManagerImpl$networkChangeReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->g:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver$default(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;ILjava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->d:Z

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->c:Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a(Lcom/samsung/android/app/music/network/NetworkInfo;)V

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkManagerImpl"

    const-string v1, "onActivityStarted. has pending notify state."

    .line 72
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->d()V

    :cond_0
    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->c:Lcom/samsung/android/app/music/network/NetworkInfo;

    return-object v0
.end method

.method public onActivityCreated(Landroid/support/v4/app/FragmentActivity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a()V

    return-void
.end method

.method public onActivityDestroyed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->b()V

    return-void
.end method

.method public onActivityStarted(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->c()V

    return-void
.end method

.method public onActivityStopped(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->d:Z

    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
