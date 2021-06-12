.class public Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;,
        Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$Gravity;
    }
.end annotation


# static fields
.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss(Landroid/view/View;)V
    .locals 0

    .line 105
    return-void
.end method

.method public static isShowing(Landroid/view/View;)Z
    .locals 0

    .line 112
    const/4 p0, 0x0

    return p0
.end method

.method public static setContent(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 84
    return-void
.end method

.method public static setContent(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    .line 91
    return-void
.end method

.method public static setHoverDetectTime(Landroid/view/View;I)V
    .locals 0

    .line 77
    return-void
.end method

.method public static setHoverPopupListener(Landroid/view/View;Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;)V
    .locals 1

    .line 120
    return-void
.end method

.method public static setHoverPopupType(Landroid/view/View;I)V
    .locals 0

    .line 59
    return-void
.end method

.method public static setPopupGravity(Landroid/view/View;I)V
    .locals 0

    .line 63
    return-void
.end method

.method public static setPopupOffset(Landroid/view/View;II)V
    .locals 0

    .line 70
    return-void
.end method

.method public static show(Landroid/view/View;)V
    .locals 1

    .line 98
    return-void
.end method
