.class final Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->registerListener(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .locals 1

    .line 130
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onDesktopDockConnectionChanged."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 2

    .line 135
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDesktopModeChanged."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->access$000(Z)V

    return-void
.end method
