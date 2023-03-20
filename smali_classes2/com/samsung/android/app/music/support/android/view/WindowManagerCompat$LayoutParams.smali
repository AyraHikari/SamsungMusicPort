.class public Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;
.super Ljava/lang/Object;
.source "WindowManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final MULTIWINDOW_FLAG_DISABLE_FLOATING_WINDOW:I

.field public static final PRIVATE_FLAG_NO_MOVE_ANIMATION:I

.field public static final SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:I

.field public static final SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

.field public static final SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I

.field private static final UNDEFINED:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    .line 2
    :cond_0
    sget v2, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I

    :goto_0
    sput v2, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I

    if-eqz v0, :cond_1

    move v2, v1

    goto :goto_1

    .line 3
    :cond_1
    sget v2, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->MULTIWINDOW_FLAG_DISABLE_FLOATING_WINDOW:I

    :goto_1
    sput v2, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->MULTIWINDOW_FLAG_DISABLE_FLOATING_WINDOW:I

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    .line 4
    :cond_2
    sget v2, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    :goto_2
    sput v2, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_3

    .line 5
    :cond_3
    sget v2, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:I

    :goto_3
    sput v2, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:I

    if-eqz v0, :cond_4

    goto :goto_4

    .line 6
    :cond_4
    sget v1, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->PRIVATE_FLAG_NO_MOVE_ANIMATION:I

    :goto_4
    sput v1, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->PRIVATE_FLAG_NO_MOVE_ANIMATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->addSamsungFlags(Landroid/view/WindowManager$LayoutParams;I)V

    :goto_0
    return-void
.end method

.method public static addMultiWindowFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->addMultiWindowFlags(Landroid/view/WindowManager$LayoutParams;I)V

    :goto_0
    return-void
.end method

.method public static addPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->addPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V

    :goto_0
    return-void
.end method

.method public static clearExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->clearSamsungFlags(Landroid/view/WindowManager$LayoutParams;I)V

    :goto_0
    return-void
.end method
