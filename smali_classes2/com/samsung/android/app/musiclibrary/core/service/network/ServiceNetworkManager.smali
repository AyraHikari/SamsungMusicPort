.class public Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static volatile sNetworkManager:Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

.field private final mOnNetworkStateChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mOnNetworkStateChangedListeners:Ljava/util/Set;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    .line 48
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v0

    .line 48
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;->obtainNetworkInfo(ZZ)Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;
    .locals 2

    .line 29
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->sNetworkManager:Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->sNetworkManager:Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->sNetworkManager:Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 36
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->sNetworkManager:Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    return-object p0
.end method

.method public static obtainInstance()Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;
    .locals 2

    .line 40
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->sNetworkManager:Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->sNetworkManager:Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please call createInstance method first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateNetwork(Landroid/os/Bundle;)I
    .locals 1

    const-string v0, "networkType"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    goto :goto_0

    .line 79
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiConnected(Landroid/content/Context;)Z

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;->mobileEnabled:Z

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;->obtainNetworkInfo(ZZ)Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    const/4 p1, 0x1

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    iget-boolean p1, p1, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;->wifiEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v0

    .line 74
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;->obtainNetworkInfo(ZZ)Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    const/16 v1, 0x3e7

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;->onNetworkStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;I)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mOnNetworkStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mOnNetworkStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mOnNetworkStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateNetworkInfoByIntent(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->updateNetwork(Landroid/os/Bundle;)I

    move-result p1

    const-string v0, "SMUSIC-SV"

    const-string v1, "NetworkStateChanged()"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mOnNetworkStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;

    .line 64
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->mNetworkInfo:Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager$OnNetworkStateChangedListener;->onNetworkStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager$NetworkInfo;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
