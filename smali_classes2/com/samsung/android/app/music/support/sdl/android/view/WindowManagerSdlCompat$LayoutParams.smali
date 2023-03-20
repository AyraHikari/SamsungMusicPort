.class public Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;
.super Ljava/lang/Object;
.source "WindowManagerSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat;
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
    .locals 5

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/4 v1, 0x0

    const/16 v2, 0x899

    if-lt v0, v2, :cond_0

    const/16 v2, 0x200

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2
    :goto_0
    sput v2, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_DELAYED_ADJUST_RESIZE:I

    const/16 v2, 0x837

    const/16 v3, 0x80

    .line 3
    sput v3, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->MULTIWINDOW_FLAG_DISABLE_FLOATING_WINDOW:I

    const/16 v3, 0x835

    if-lt v0, v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 4
    :goto_1
    sput v4, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->SAMSUNG_FLAG_SOFT_INPUT_ADJUST_RESIZE_FULLSCREEN:I

    const/4 v2, 0x2

    .line 5
    sput v2, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->SAMSUNG_FLAG_ENABLE_STATUSBAR_OPEN_BY_NOTIFICATION:I

    if-lt v0, v3, :cond_2

    const/16 v1, 0x40

    .line 6
    :cond_2
    sput v1, Lcom/samsung/android/app/music/support/sdl/android/view/WindowManagerSdlCompat$LayoutParams;->PRIVATE_FLAG_NO_MOVE_ANIMATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMultiWindowFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    :cond_0
    return-void
.end method

.method public static addPrivateFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    return-void
.end method

.method public static addSamsungFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :cond_0
    return-void
.end method

.method public static clearSamsungFlags(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :cond_0
    return-void
.end method
