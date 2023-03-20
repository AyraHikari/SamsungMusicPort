.class public final Lcom/samsung/android/app/music/dialog/LowBatteryPopup;
.super Landroid/app/Activity;
.source "LowBatteryPopup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/dialog/LowBatteryPopup$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/samsung/android/app/music/dialog/LowBatteryPopup$a;

.field public static final d:Ljava/lang/String;


# instance fields
.field public final a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup$b;

.field public b:Landroidx/appcompat/app/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->c:Lcom/samsung/android/app/music/dialog/LowBatteryPopup$a;

    const-class v0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$b;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup$b;-><init>(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup$b;

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->g(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->h(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->i(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)Landroidx/appcompat/app/e;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->b:Landroidx/appcompat/app/e;

    return-object p0
.end method

.method public static final synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static final g(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p0, 0x52

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final h(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->b:Landroidx/appcompat/app/e;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/j;->dismiss()V

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/music/activity/j;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static final i(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->b:Landroidx/appcompat/app/e;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/app/j;->dismiss()V

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/music/activity/j;->b(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final f(Landroid/content/Context;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->d:Ljava/lang/String;

    const-string v1, "showLowBatteryMsg() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroidx/appcompat/app/e$a;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/e$a;-><init>(Landroid/content/Context;)V

    .line 3
    sget-object p1, Lcom/samsung/android/app/music/dialog/g;->a:Lcom/samsung/android/app/music/dialog/g;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e$a;->n(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/e$a;

    .line 4
    new-instance p1, Lcom/samsung/android/app/music/dialog/e;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/dialog/e;-><init>(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e$a;->m(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/e$a;

    const p1, 0x7f130073

    .line 5
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e$a;->s(I)Landroidx/appcompat/app/e$a;

    .line 6
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ktx/app/a;->j(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f1301df

    goto :goto_0

    :cond_0
    const p1, 0x7f1301e0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/e$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/e$a;

    move-result-object p1

    const p2, 0x7f1302f5

    .line 8
    new-instance v1, Lcom/samsung/android/app/music/dialog/f;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/dialog/f;-><init>(Lcom/samsung/android/app/music/dialog/LowBatteryPopup;)V

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/e$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/e$a;

    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/app/e$a;->create()Landroidx/appcompat/app/e;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->b:Landroidx/appcompat/app/e;

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p0, p1}, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->f(Landroid/content/Context;I)V

    const/4 p1, 0x3

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 4
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup$b;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/LowBatteryPopup;->a:Lcom/samsung/android/app/music/dialog/LowBatteryPopup$b;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
