.class Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$3;
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

    .line 431
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 434
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 435
    sget-object p2, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 436
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$400(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 437
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$500(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$600(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
