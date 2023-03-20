.class public Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;
.super Ljava/lang/Object;
.source "HoverPopupWindowSdlCompat.java"


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public static isShowing(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setContent(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static setContent(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static setHoverDetectTime(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    :cond_0
    return-void
.end method

.method public static setHoverPopupListener(Landroid/view/View;Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$1;-><init>(Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V

    :cond_0
    return-void
.end method

.method public static setHoverPopupType(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setHoverPopupType(I)V

    return-void
.end method

.method public static setPopupGravity(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    :cond_0
    return-void
.end method

.method public static setPopupOffset(Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    :cond_0
    return-void
.end method

.method public static show(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/HoverPopupWindow;->show(I)V

    :cond_0
    return-void
.end method
