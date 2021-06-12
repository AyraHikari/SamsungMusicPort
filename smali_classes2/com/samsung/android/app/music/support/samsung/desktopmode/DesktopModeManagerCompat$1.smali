.class final Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


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

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 1

    .line 112
    iget p1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 117
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->access$000(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 114
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->access$000(Z)V

    :goto_0
    return-void
.end method
