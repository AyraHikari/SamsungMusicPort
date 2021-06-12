.class Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/castingfindermanager/CastingFinderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 407
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SOURCE_STATE"

    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-nez v0, :cond_4

    const-string v0, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    .line 409
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    .line 410
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.samsung.intent.action.WIFI_DISPLAY_SINK_STATE"

    .line 411
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.samsung.intent.action.BLUETOOTH_MIRRORING_CONNECTION_CHANGED"

    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.samsung.intent.action.BLUETOOTH_RECEIVER_CONNECTION_CHANGED"

    .line 413
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.samsung.intent.action.CAST_CONNECTION_CHANGED"

    .line 414
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 428
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->c(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "airplane_mode_on"

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const-string v0, "CastingFinder1.0.5"

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Receive "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v2, :cond_1

    .line 432
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)I

    move-result p2

    or-int/lit8 p2, p2, 0x4

    invoke-static {p1, p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;I)I

    .line 433
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 434
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;I)V

    goto/16 :goto_2

    :cond_1
    if-nez p2, :cond_6

    .line 437
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)I

    move-result p2

    and-int/lit8 p2, p2, -0x5

    invoke-static {p1, p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;I)I

    .line 438
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 439
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;I)V

    goto/16 :goto_2

    :cond_2
    const-string v0, "android.intent.action.HDMI_PLUGGED"

    .line 442
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "state"

    const/4 v1, 0x0

    .line 443
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const-string v0, "CastingFinder1.0.5"

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Receive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    .line 446
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)I

    move-result p2

    or-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;I)I

    goto :goto_0

    .line 448
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)I

    move-result p2

    and-int/lit8 p2, p2, -0x3

    invoke-static {p1, p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;I)I

    .line 450
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 451
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;I)V

    goto :goto_2

    :cond_4
    :goto_1
    const-string v0, "state"

    .line 415
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "CastingFinder1.0.5"

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Receive "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " state = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v2, :cond_5

    .line 418
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)I

    move-result p2

    or-int/2addr p2, v2

    invoke-static {p1, p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;I)I

    .line 419
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 420
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;I)V

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    .line 423
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)I

    move-result p2

    and-int/lit8 p2, p2, -0x2

    invoke-static {p1, p2}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager;I)I

    .line 424
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 425
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastingFinderManager$1;->a:Lcom/samsung/android/castingfindermanager/CastingFinderManager;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastingFinderManager;->b(Lcom/samsung/android/castingfindermanager/CastingFinderManager;)Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;->a(Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderManagerHandler;I)V

    :cond_6
    :goto_2
    return-void
.end method
