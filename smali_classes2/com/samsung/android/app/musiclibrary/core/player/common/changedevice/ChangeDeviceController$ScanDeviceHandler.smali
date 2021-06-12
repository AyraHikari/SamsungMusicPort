.class Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanDeviceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;)V
    .locals 0

    .line 349
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 352
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 374
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$200(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$400(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 375
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$800(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V

    .line 377
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 354
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->refreshDlna()V

    .line 355
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$200(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 356
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$300(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V

    .line 358
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$402(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Z)Z

    .line 359
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$500(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$600(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    .line 360
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$700(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;->onStartScan()V

    const-wide/16 v1, 0x251c

    .line 363
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 366
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$200(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 367
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$800(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)V

    .line 369
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$402(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Z)Z

    .line 370
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$700(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;->onStopScan()V

    const-wide/16 v2, 0x1388

    .line 371
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$ScanDeviceHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
