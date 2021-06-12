.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BgSaveHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;Landroid/os/Looper;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    .line 596
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 602
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;

    .line 603
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$BgSaveHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StartingWindowUpdater$AlbumSaveData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartingWindow: fail to save msg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
