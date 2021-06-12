.class Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$1;->a:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$1;->a:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->a(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V

    return-void
.end method
