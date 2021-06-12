.class public final Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "device_dialog"

    .line 42
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 46
    new-instance p1, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;

    invoke-direct {p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;-><init>()V

    const-string v1, "device_dialog"

    .line 47
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final a(Landroid/support/v4/app/FragmentActivity;I)V
    .locals 2

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 p2, -0x1

    goto :goto_0

    :pswitch_1
    const p2, 0x7f0b043e

    goto :goto_0

    :pswitch_2
    const p2, 0x7f0b043c

    goto :goto_0

    :pswitch_3
    const p2, 0x7f0b043d

    goto :goto_0

    :pswitch_4
    const p2, 0x7f0b043f

    goto :goto_0

    .line 56
    :pswitch_5
    sget p2, Lcom/samsung/android/app/music/regional/VariantStringIds;->a:I

    goto :goto_0

    :pswitch_6
    const p2, 0x7f0b0442

    :goto_0
    if-eq p2, v0, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;->a(Landroid/support/v4/app/FragmentActivity;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final a(Landroid/support/v4/app/FragmentActivity;Z)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->q_:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Landroid/support/v4/app/FragmentActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    instance-of v0, p1, Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_2

    .line 27
    check-cast p1, Landroid/hardware/display/DisplayManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->checkExceptionalCase(Landroid/hardware/display/DisplayManager;)I

    move-result p1

    if-nez p1, :cond_1

    .line 29
    sget-object p1, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;->a(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    .line 30
    sget-object v0, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;->a:Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/player/changedevice/ChangeDeviceUtils;->a(Landroid/support/v4/app/FragmentActivity;I)V

    :cond_2
    :goto_0
    return-void
.end method
