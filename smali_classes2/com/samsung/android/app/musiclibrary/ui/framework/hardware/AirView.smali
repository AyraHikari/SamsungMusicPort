.class public Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;,
        Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;,
        Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->TYPE_TOOLTIP:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a:I

    .line 43
    sget v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->TYPE_USER_CUSTOM:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->b:I

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 68
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a:I

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setHoverPopupType(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 77
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a:I

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setHoverPopupType(Landroid/view/View;I)V

    .line 78
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setPopupGravity(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/widget/SeekBar;Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 112
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->b:I

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setHoverPopupType(Landroid/view/View;I)V

    .line 113
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$SeekHoverListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;)V

    .line 114
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat;->setOnSeekBarHoverListener(Landroid/widget/SeekBar;Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;)V

    .line 115
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 124
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->isShowing(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->dismiss(Landroid/view/View;)V

    .line 126
    invoke-static {p0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->show(Landroid/view/View;)V

    :cond_0
    return-void
.end method
