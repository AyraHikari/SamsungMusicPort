.class Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


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

    .line 158
    iput-object p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$2;->a:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p2, "mobile_data"

    .line 161
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$2;->a:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    iget-object p2, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$2;->a:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-static {p2}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->b(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isMobileDataOn()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->a(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;Z)Z

    .line 163
    iget-object p1, p0, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager$2;->a:Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;->a(Lcom/samsung/android/app/music/service/network/ServiceNetworkManager;)V

    :cond_0
    return-void
.end method
