.class public Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;
.super Ljava/lang/Object;
.source "HoverPopupWindowCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;,
        Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$Gravity;
    }
.end annotation


# static fields
.field public static final TYPE_NONE:I

.field public static final TYPE_TOOLTIP:I

.field public static final TYPE_USER_CUSTOM:I

.field public static final TYPE_WIDGET_DEFAULT:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->TYPE_NONE:I

    const/4 v0, 0x1

    .line 3
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->TYPE_TOOLTIP:I

    const/4 v0, 0x3

    .line 4
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->TYPE_USER_CUSTOM:I

    const/4 v0, 0x2

    .line 5
    sput v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->TYPE_WIDGET_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismiss(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->dismiss(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static isHoveringUI(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lcom/samsung/android/app/music/support/android/content/pm/PackageManagerCompat;->FEATURE_HOVERING_UI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isShowing(Landroid/view/View;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->isShowing(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static setContent(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setContent(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setContent(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    .line 5
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setContent(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setHoverDetectTime(Landroid/view/View;I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoverDetectTime(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setHoverDetectTime(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setHoverPopupListener(Landroid/view/View;Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object p0

    .line 3
    new-instance v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$1;-><init>(Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOnSetContentViewListener(Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$2;-><init>(Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat$HoverPopupListener;)V

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setHoverPopupListener(Landroid/view/View;Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat$HoverPopupListener;)V

    :goto_0
    return-void
.end method

.method public static setHoverPopupType(Landroid/view/View;I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->semSetHoverPopupType(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setHoverPopupType(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public static setPopupGravity(Landroid/view/View;I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setPopupGravity(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setPopupOffset(Landroid/view/View;II)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->setPopupOffset(Landroid/view/View;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static show(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/widget/HoverPopupWindowSdlCompat;->show(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
