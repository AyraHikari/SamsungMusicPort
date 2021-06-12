.class Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$1;->a:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    const-string p1, "SV-MediaBrowser"

    const-string p2, "Bound to play back service."

    .line 65
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$1;->a:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->a(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Z)Z

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$1;->a:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;

    iget-object p2, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$1;->a:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;

    invoke-static {p2}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->a(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->a(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Landroid/os/Bundle;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SV-MediaBrowser"

    const-string v0, "Disconnect with play back service."

    .line 72
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService$1;->a:Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;->a(Lcom/samsung/android/app/music/service/browser/PlayerMediaBrowserService;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-void
.end method
