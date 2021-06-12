.class public Landroid/support/v4/view/SeslPointerIconReflector;
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
        Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi24Impl;,
        Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi21Impl;,
        Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

.field protected static mClassName:Ljava/lang/String; = "android.view.PointerIcon"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 200
    new-instance v0, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi24Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi24Impl;-><init>(Landroid/support/v4/view/SeslPointerIconReflector$1;)V

    sput-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi21Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi21Impl;-><init>(Landroid/support/v4/view/SeslPointerIconReflector$1;)V

    sput-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getField_SEM_TYPE_STYLUS_DEFAULT()I
    .locals 1

    .line 211
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v0

    return v0
.end method

.method public static getField_SEM_TYPE_STYLUS_MORE()I
    .locals 1

    .line 261
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;->getField_SEM_TYPE_STYLUS_MORE()I

    move-result v0

    return v0
.end method

.method public static getField_SEM_TYPE_STYLUS_PEN_SELECT()I
    .locals 1

    .line 252
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;->getField_SEM_TYPE_STYLUS_PEN_SELECT()I

    move-result v0

    return v0
.end method

.method public static getField_SEM_TYPE_STYLUS_SCROLL_DOWN()I
    .locals 1

    .line 227
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;->getField_SEM_TYPE_STYLUS_SCROLL_DOWN()I

    move-result v0

    return v0
.end method

.method public static getField_SEM_TYPE_STYLUS_SCROLL_LEFT()I
    .locals 1

    .line 235
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;->getField_SEM_TYPE_STYLUS_SCROLL_LEFT()I

    move-result v0

    return v0
.end method

.method public static getField_SEM_TYPE_STYLUS_SCROLL_RIGHT()I
    .locals 1

    .line 243
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;->getField_SEM_TYPE_STYLUS_SCROLL_RIGHT()I

    move-result v0

    return v0
.end method

.method public static getField_SEM_TYPE_STYLUS_SCROLL_UP()I
    .locals 1

    .line 219
    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;->getField_SEM_TYPE_STYLUS_SCROLL_UP()I

    move-result v0

    return v0
.end method
