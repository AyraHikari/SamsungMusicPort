.class public Lcom/samsung/android/app/music/support/android/view/inputmethod/InputMethodManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static minimizeSoftInput(Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;I)Z
    .locals 1

    .line 12
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->semMinimizeSoftInput(Landroid/os/IBinder;I)Z

    move-result p0

    return p0

    .line 15
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/view/inputmethod/InputMethodManagerSdlCompat;->minimizeSoftInput(Landroid/view/inputmethod/InputMethodManager;Landroid/os/IBinder;I)Z

    move-result p0

    return p0
.end method
