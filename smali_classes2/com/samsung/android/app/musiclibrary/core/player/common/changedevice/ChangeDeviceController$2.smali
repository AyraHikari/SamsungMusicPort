.class Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 414
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "wifi_state"

    const/4 v0, 0x4

    .line 415
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 417
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiStateReceiver - previous state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " changed state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$900(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .line 420
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 421
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$700(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 422
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$700(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;->onNotify(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    .line 425
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1202(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;I)I

    :cond_1
    :goto_0
    return-void
.end method
