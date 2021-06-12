.class public Landroid/support/v4/widget/SeslAdapterViewReflector;
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
        Landroid/support/v4/widget/SeslAdapterViewReflector$AdapterViewApi21Impl;,
        Landroid/support/v4/widget/SeslAdapterViewReflector$AdapterViewBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/SeslAdapterViewReflector$AdapterViewBaseImpl;

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
    .locals 2

    .line 17
    const-class v0, Landroid/widget/AdapterView;

    sput-object v0, Landroid/support/v4/widget/SeslAdapterViewReflector;->mClass:Ljava/lang/Class;

    .line 73
    new-instance v0, Landroid/support/v4/widget/SeslAdapterViewReflector$AdapterViewApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SeslAdapterViewReflector$AdapterViewApi21Impl;-><init>(Landroid/support/v4/widget/SeslAdapterViewReflector$1;)V

    sput-object v0, Landroid/support/v4/widget/SeslAdapterViewReflector;->IMPL:Landroid/support/v4/widget/SeslAdapterViewReflector$AdapterViewBaseImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .line 16
    sget-object v0, Landroid/support/v4/widget/SeslAdapterViewReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_mSelectedPosition(Landroid/widget/AdapterView;)I
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 85
    sget-object v0, Landroid/support/v4/widget/SeslAdapterViewReflector;->IMPL:Landroid/support/v4/widget/SeslAdapterViewReflector$AdapterViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/SeslAdapterViewReflector$AdapterViewBaseImpl;->getField_mSelectedPosition(Landroid/widget/AdapterView;)I

    move-result p0

    return p0
.end method

.method public static setBottomColor(Landroid/widget/AdapterView;I)V
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 123
    sget-object v0, Landroid/support/v4/widget/SeslAdapterViewReflector;->IMPL:Landroid/support/v4/widget/SeslAdapterViewReflector$AdapterViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SeslAdapterViewReflector$AdapterViewBaseImpl;->setBottomColor(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method public static setNextSelectedPositionInt(Landroid/widget/AdapterView;I)V
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 110
    sget-object v0, Landroid/support/v4/widget/SeslAdapterViewReflector;->IMPL:Landroid/support/v4/widget/SeslAdapterViewReflector$AdapterViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SeslAdapterViewReflector$AdapterViewBaseImpl;->setNextSelectedPositionInt(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method public static setSelectedPositionInt(Landroid/widget/AdapterView;I)V
    .locals 1
    .param p0    # Landroid/widget/AdapterView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    sget-object v0, Landroid/support/v4/widget/SeslAdapterViewReflector;->IMPL:Landroid/support/v4/widget/SeslAdapterViewReflector$AdapterViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SeslAdapterViewReflector$AdapterViewBaseImpl;->setSelectedPositionInt(Landroid/widget/AdapterView;I)V

    return-void
.end method
