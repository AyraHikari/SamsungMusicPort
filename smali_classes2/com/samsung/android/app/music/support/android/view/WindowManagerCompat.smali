.class public Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat;
.super Ljava/lang/Object;
.source "WindowManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs requestSystemKeyEvent(Landroid/content/ComponentName;Z[I)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    .line 3
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v3

    .line 4
    invoke-virtual {v3, v2, p0, p1}, Lcom/samsung/android/view/SemWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat;->requestSystemKeyEvent(Landroid/content/ComponentName;Z[I)V

    :cond_1
    return-void
.end method

.method public static setStartingWindowContentView(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/view/SemWindowManager;->setStartingWindowContentView(Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p2}, Lcom/samsung/android/app/music/support/sdl/android/content/ContextSdlCompat;->setStartingWindowContentView(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
