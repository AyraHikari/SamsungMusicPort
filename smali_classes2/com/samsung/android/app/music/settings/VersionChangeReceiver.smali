.class public final Lcom/samsung/android/app/music/settings/VersionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VersionChangeReceiver.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.MY_PACKAGE_REPLACED"

    .line 2
    invoke-static {v0, p2}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 4
    invoke-static {p1}, Lcom/samsung/android/app/music/util/f;->d(Landroid/content/Context;)V

    .line 5
    invoke-static {p1}, Lcom/samsung/android/app/music/util/f;->f(Landroid/content/Context;)V

    .line 6
    invoke-static {p2}, Lcom/samsung/android/app/music/util/f;->b(Landroid/content/pm/PackageManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/samsung/android/app/music/util/f;->e(Landroid/content/Context;)V

    .line 8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-eq p2, v0, :cond_1

    .line 9
    invoke-static {p1}, Lcom/samsung/android/app/music/util/f;->g(Landroid/content/Context;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/music/util/f;->a(Landroid/content/pm/PackageManager;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    invoke-static {p1}, Lcom/samsung/android/app/music/util/f;->e(Landroid/content/Context;)V

    .line 12
    :cond_1
    :goto_0
    sget-object p2, Lcom/samsung/android/app/music/settings/i0;->a:Lcom/samsung/android/app/music/settings/i0;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/settings/i0;->a(Landroid/content/Context;)V

    :cond_2
    return-void
.end method
