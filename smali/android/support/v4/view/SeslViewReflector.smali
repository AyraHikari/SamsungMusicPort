.class public Landroid/support/v4/view/SeslViewReflector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/SeslViewReflector$SeslMeasureSpecReflector;,
        Landroid/support/v4/view/SeslViewReflector$ViewApi24Impl;,
        Landroid/support/v4/view/SeslViewReflector$ViewApi21Impl;,
        Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    const-class v0, Landroid/view/View;

    sput-object v0, Landroid/support/v4/view/SeslViewReflector;->mClass:Ljava/lang/Class;

    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 334
    new-instance v0, Landroid/support/v4/view/SeslViewReflector$ViewApi24Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/view/SeslViewReflector$ViewApi24Impl;-><init>(Landroid/support/v4/view/SeslViewReflector$1;)V

    sput-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    goto :goto_0

    .line 336
    :cond_0
    new-instance v0, Landroid/support/v4/view/SeslViewReflector$ViewApi21Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/view/SeslViewReflector$ViewApi21Impl;-><init>(Landroid/support/v4/view/SeslViewReflector$1;)V

    sput-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .line 20
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static clearAccessibilityFocus(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 408
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->clearAccessibilityFocus(Landroid/view/View;)V

    return-void
.end method

.method public static getField_mPaddingLeft(Landroid/view/View;)I
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 375
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->getField_mPaddingLeft(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getField_mPaddingRight(Landroid/view/View;)I
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 389
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->getField_mPaddingRight(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static getWindowDisplayFrame(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 545
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->getWindowDisplayFrame(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static isHighContrastTextEnabled(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 515
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->isHighContrastTextEnabled(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isHoveringUIEnabled(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 494
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->isHoveringUIEnabled(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isInScrollingContainer(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 399
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->isInScrollingContainer(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static isVisibleToUser(Landroid/view/View;)Z
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 438
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public static isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 454
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public static notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 428
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    return-void
.end method

.method public static requestAccessibilityFocus(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 418
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->requestAccessibilityFocus(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static resetPaddingToInitialValues(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 538
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->resetPaddingToInitialValues(Landroid/view/View;)V

    return-void
.end method

.method public static resolvePadding(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 531
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->resolvePadding(Landroid/view/View;)V

    return-void
.end method

.method public static semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 524
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->semGetHoverPopup(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static semGetHoverPopupType(Landroid/view/View;)I
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 464
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->semGetHoverPopupType(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static semGetRoundedCorners(Landroid/view/View;)I
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 580
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->semGetRoundedCorners(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static semSetDirectPenInputEnabled(Landroid/view/View;Z)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 484
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->semSetDirectPenInputEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public static semSetHoverPopupType(Landroid/view/View;I)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 474
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->semSetHoverPopupType(Landroid/view/View;I)V

    return-void
.end method

.method public static semSetPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 505
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->semSetPointerIcon(Landroid/view/View;ILandroid/view/PointerIcon;)V

    return-void
.end method

.method public static semSetRoundedCorners(Landroid/view/View;I)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 573
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->semSetRoundedCorners(Landroid/view/View;I)V

    return-void
.end method

.method public static setField_mPaddingLeft(Landroid/view/View;I)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 349
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->setField_mPaddingLeft(Landroid/view/View;I)V

    return-void
.end method

.method public static setField_mPaddingRight(Landroid/view/View;I)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 361
    sget-object v0, Landroid/support/v4/view/SeslViewReflector;->IMPL:Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/SeslViewReflector$ViewBaseImpl;->setField_mPaddingRight(Landroid/view/View;I)V

    return-void
.end method
