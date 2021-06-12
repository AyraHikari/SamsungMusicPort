.class public Lcom/samsung/android/app/music/milk/deeplink/task/ServicePrevTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/ServiceDeepLinkTask;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceDeepLinkTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 35
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceDeepLinkTask;->b()V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePrevTask;->a:Landroid/content/Context;

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePrevTask;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "DeepLink-ServicePrevTask"

    return-object v0
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePrevTask;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const-string p1, "DeepLink-ServicePrevTask"

    const-string v0, "onServiceConnected : meta data radio"

    .line 47
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playPrevRadio(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "DeepLink-ServicePrevTask"

    const-string v0, "onServiceConnected : meta data not radio"

    .line 50
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playPrev(Z)V

    .line 53
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePrevTask;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePrevTask;->c:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
