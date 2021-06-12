.class public final Lcom/samsung/android/app/musiclibrary/core/service/receiver/NetworkIntentReceiver;
.super Lcom/samsung/android/app/musiclibrary/core/service/receiver/EmptyDataSchemeIntentReceiverObserver;
.source "SourceFile"


# static fields
.field private static final ACTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/NetworkIntentReceiver;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/EmptyDataSchemeIntentReceiverObserver;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    return-void
.end method


# virtual methods
.method public getSupportedActions()[Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/NetworkIntentReceiver;->ACTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 27
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/network/ServiceNetworkManager;->obtainInstance()Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/network/INetworkManager;->updateNetworkInfoByIntent(Landroid/os/Bundle;)V

    return-void
.end method
