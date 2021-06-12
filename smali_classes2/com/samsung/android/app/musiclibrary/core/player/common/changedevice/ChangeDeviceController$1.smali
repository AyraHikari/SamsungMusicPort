.class Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;
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

    .line 385
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 388
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 389
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDlnaConnectivityReceiver - action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$900(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.music.dlna.servicedeleted"

    .line 390
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 391
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 392
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_0
    const-string v0, "com.sec.android.app.music.dlna.connectivitychanged"

    .line 393
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "com.sec.android.app.music.dlna.connectivitychanged.extra.what"

    const/4 v0, -0x1

    .line 394
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 396
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDlnaConnectivityReceiver - what: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$900(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 398
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1100(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 399
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 400
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 402
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$500(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$600(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    .line 403
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDlnaConnectivityReceiver - mPlayerType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1100(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$900(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    .line 405
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$500(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$600(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
