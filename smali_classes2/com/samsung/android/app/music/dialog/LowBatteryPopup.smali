.class public Lcom/samsung/android/app/music/dialog/LowBatteryPopup;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "LowBatteryPopup"


# instance fields
.field private final b:Landroid/content/BroadcastReceiver;

.field private c:Landroid/support/v7/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$1;-><init>(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->b:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->c:Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)Landroid/support/v7/app/AlertDialog;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->c:Landroid/support/v7/app/AlertDialog;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 2

    .line 76
    sget-object v0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->a:Ljava/lang/String;

    const-string v1, "showLowBatteryMsg() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance p1, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$2;-><init>(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 85
    new-instance p1, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$3;-><init>(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)V

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f0b00a6

    .line 93
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 94
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, p1, v1

    const p2, 0x7f0b0191

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$4;-><init>(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)V

    const v1, 0x7f0b02d3

    .line 95
    invoke-virtual {p1, v1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->c:Landroid/support/v7/app/AlertDialog;

    .line 103
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->c:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private b()V
    .locals 1

    const-string v0, "activity"

    .line 107
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 108
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/support/app/ActivityManagerCompat;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->stopLockTask()V

    :cond_0
    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->moveTaskToBack(Z)Z

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->finish()V

    .line 115
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->exit()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->b()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 37
    invoke-direct {p0, p0, p1}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->a(Landroid/content/Context;I)V

    const/4 p1, 0x3

    .line 38
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->setVolumeControlStream(I)V

    .line 40
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
