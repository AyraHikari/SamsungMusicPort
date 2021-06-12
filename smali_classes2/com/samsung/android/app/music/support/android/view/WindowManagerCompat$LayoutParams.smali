.class public Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method static constructor <clinit>()V
    .locals 2

    .line 18
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I

    :goto_0
    sput v0, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I

    .line 26
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->MULTIWINDOW_FLAG_DISABLE_FLOATING_WINDOW:I

    :goto_1
    sput v0, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->MULTIWINDOW_FLAG_DISABLE_FLOATING_WINDOW:I

    .line 30
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    :goto_2
    sput v0, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    .line 37
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    sget v0, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:I

    :goto_3
    sput v0, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:I

    .line 41
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    sget v1, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->PRIVATE_FLAG_NO_MOVE_ANIMATION:I

    :goto_4
    sput v1, Lcom/samsung/android/app/music/support/android/view/WindowManagerCompat$LayoutParams;->PRIVATE_FLAG_NO_MOVE_ANIMATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->addSamsungFlags(Landroid/view/WindowManager$LayoutParams;I)V

    :goto_0
    return-void
.end method

.method public static addMultiWindowFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1

    .line 63
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->addMultiWindowFlags(Landroid/view/WindowManager$LayoutParams;I)V

    :goto_0
    return-void
.end method

.method public static addPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1

    .line 72
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->addPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V

    :goto_0
    return-void
.end method

.method public static clearExtensionFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 1

    .line 55
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->clearSamsungFlags(Landroid/view/WindowManager$LayoutParams;I)V

    :goto_0
    return-void
.end method
