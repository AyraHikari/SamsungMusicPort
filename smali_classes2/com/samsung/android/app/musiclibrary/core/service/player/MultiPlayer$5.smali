.class Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$5;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->registerRouteCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 0

    .line 1274
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$5;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string p1, "SV-Player"

    const-string v0, "mRouterCallback onRoutePresentationDisplayChanged is called."

    .line 1278
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 1279
    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->semGetDeviceAddress()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "SV-Player"

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRouterCallback onRoutePresentationDisplayChanged isConnected? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    invoke-virtual {p2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1282
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$5;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method
