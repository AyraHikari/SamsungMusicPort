.class Lcom/samsung/android/app/music/dialog/LowBatteryPopup$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/dialog/LowBatteryPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$1;->a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "status"

    const/4 v0, 0x1

    .line 56
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "level"

    const/4 v2, -0x1

    .line 58
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 59
    invoke-static {}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSystemReceiver - batteryLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " batteryStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    if-le p2, v0, :cond_2

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$1;->a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup;

    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->a(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$1;->a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup;

    invoke-static {p1}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->a(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$1;->a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->finish()V

    :cond_2
    return-void
.end method
