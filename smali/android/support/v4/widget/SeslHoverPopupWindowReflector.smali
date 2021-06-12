.class public Landroid/support/v4/widget/SeslHoverPopupWindowReflector;
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
        Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowApi24Impl;,
        Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowApi21Impl;,
        Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 150
    new-instance v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowApi24Impl;

    invoke-direct {v0}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->IMPL:Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;

    goto :goto_0

    .line 152
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->IMPL:Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getField_TYPE_NONE()I
    .locals 1

    .line 162
    sget-object v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->IMPL:Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;->getField_TYPE_NONE()I

    move-result v0

    return v0
.end method

.method public static getField_TYPE_TOOLTIP()I
    .locals 1

    .line 171
    sget-object v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->IMPL:Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;->getField_TYPE_TOOLTIP()I

    move-result v0

    return v0
.end method

.method public static getField_TYPE_USER_CUSTOM()I
    .locals 1

    .line 180
    sget-object v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->IMPL:Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;->getField_TYPE_USER_CUSTOM()I

    move-result v0

    return v0
.end method

.method public static setGravity(Ljava/lang/Object;I)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 190
    sget-object v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->IMPL:Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;->setGravity(Ljava/lang/Object;I)V

    return-void
.end method

.method public static setHoverDetectTime(Ljava/lang/Object;I)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 211
    sget-object v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->IMPL:Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;->setHoverDetectTime(Ljava/lang/Object;I)V

    return-void
.end method

.method public static setHoveringPoint(Ljava/lang/Object;II)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 222
    sget-object v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->IMPL:Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;->setHoveringPoint(Ljava/lang/Object;II)V

    return-void
.end method

.method public static setOffset(Ljava/lang/Object;II)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 201
    sget-object v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->IMPL:Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;->setOffset(Ljava/lang/Object;II)V

    return-void
.end method

.method public static update(Ljava/lang/Object;)V
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 231
    sget-object v0, Landroid/support/v4/widget/SeslHoverPopupWindowReflector;->IMPL:Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/SeslHoverPopupWindowReflector$HoverPopupWindowBaseImpl;->update(Ljava/lang/Object;)V

    return-void
.end method
