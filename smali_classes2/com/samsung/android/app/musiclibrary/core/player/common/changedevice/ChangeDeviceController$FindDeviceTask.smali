.class Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindDeviceTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mNicId:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 459
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->mNicId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$1;)V
    .locals 0

    .line 454
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    return-void
.end method

.method private addAvailableWfdDevices(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .line 586
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1700(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->getAvailableDisplays(Landroid/hardware/display/DisplayManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 587
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 593
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;

    .line 594
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;-><init>()V

    const/4 v3, 0x2

    .line 595
    iput v3, v2, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceType:I

    .line 596
    invoke-virtual {v1}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    .line 597
    invoke-virtual {v1}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 598
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 599
    iget-object v3, v2, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    iput-object v3, v2, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceName:Ljava/lang/String;

    goto :goto_1

    .line 601
    :cond_1
    iput-object v3, v2, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceName:Ljava/lang/String;

    .line 603
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat$WifiDeviceInfo;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/DisplayManagerUtils;->getDeviceType(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->wfdDeviceType:I

    .line 605
    iget v1, v2, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->wfdDeviceType:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 606
    iput-boolean v1, v2, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->isWfdDongle:Z

    .line 612
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void

    .line 588
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    const-string v0, "addAvailableWfdDevices() - No availableDisplays."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$900(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    return-void
.end method

.method private addConnectedWfdDevices(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 570
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;-><init>()V

    const/4 v1, 0x2

    .line 571
    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceType:I

    .line 574
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1700(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayCompat;->getDeviceAddress(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    .line 575
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1700(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayCompat;->getDeviceName(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceName:Ljava/lang/String;

    .line 576
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .line 577
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1700(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayCompat;->getPrimaryDeviceType(Landroid/hardware/display/DisplayManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/DisplayManagerUtils;->getDeviceType(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->wfdDeviceType:I

    .line 579
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1402(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)Ljava/lang/String;

    .line 580
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addConnectedWfdDevices() name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$900(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    .line 581
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addDmrDevices(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "avplayer_id"

    const-string v1, "avplayer_name"

    const-string v2, "album_art"

    .line 497
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->mNicId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "nic_id = ? or avplayer_name = ?"

    .line 506
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->mNicId:Ljava/lang/String;

    aput-object v6, v3, v4

    move-object v6, v0

    move-object v7, v3

    goto :goto_0

    :cond_0
    move-object v6, v2

    move-object v7, v6

    .line 510
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    .line 511
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1500(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Renderer;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 513
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_1
    const-string v3, "avplayer_id"

    .line 516
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "avplayer_name"

    .line 518
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 519
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 526
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1600(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Windows Media Player"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 527
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    const-string v4, "addDmrDevices() current meta is online and device is WMP so ignore this."

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$900(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    goto :goto_1

    .line 535
    :cond_3
    new-instance v5, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;-><init>()V

    .line 536
    iput v1, v5, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceType:I

    .line 537
    iput-object v3, v5, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    .line 538
    iput-object v4, v5, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceName:Ljava/lang/String;

    const-string v3, "album_art"

    .line 540
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->albumArtUriStr:Ljava/lang/String;

    .line 541
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_4
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 510
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v0, :cond_6

    if-eqz v2, :cond_5

    .line 544
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    throw p1

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    return-void
.end method

.method private addWfdDevices(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$200(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    const-string v0, "addWfdDevices() WFD is not supported."

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$900(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1500(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdConnected(Landroid/content/Context;)Z

    move-result v0

    .line 554
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWfdDevices() isWfdConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$900(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 557
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->addConnectedWfdDevices(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1700(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->checkExceptionalCase(Landroid/hardware/display/DisplayManager;)I

    move-result v0

    if-nez v0, :cond_2

    .line 561
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->addAvailableWfdDevices(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 564
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWfdDevices() exceptionalCase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$900(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 454
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 464
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1300(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->addDmrDevices(Ljava/util/ArrayList;)V

    .line 472
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->addWfdDevices(Ljava/util/ArrayList;)V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 454
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1400(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute() mSelectedDeviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1400(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$900(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;

    .line 483
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceInfo;->deviceId:Ljava/lang/String;

    .line 484
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$1400(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$700(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$FindDeviceTask;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;->access$700(Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController;)Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/changedevice/ChangeDeviceController$OnChangeDeviceListener;->onScanFinished(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
