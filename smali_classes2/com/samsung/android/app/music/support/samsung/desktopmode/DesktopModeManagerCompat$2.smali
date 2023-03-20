.class Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$2;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->registerListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.app.action.ENTER_KNOX_DESKTOP_MODE"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "DesktopMode is Changed"

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 4
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->access$000(Z)V

    goto :goto_0

    :cond_0
    const-string p2, "android.app.action.EXIT_KNOX_DESKTOP_MODE"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->access$000(Z)V

    :cond_1
    :goto_0
    return-void
.end method
