.class public Landroid/support/v4/graphics/SeslRectReflector;
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
        Landroid/support/v4/graphics/SeslRectReflector$RectApi21Impl;,
        Landroid/support/v4/graphics/SeslRectReflector$RectBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/graphics/SeslRectReflector$RectBaseImpl;

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

    .line 15
    const-class v0, Landroid/graphics/Rect;

    sput-object v0, Landroid/support/v4/graphics/SeslRectReflector;->mClass:Ljava/lang/Class;

    .line 33
    new-instance v0, Landroid/support/v4/graphics/SeslRectReflector$RectApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/SeslRectReflector$RectApi21Impl;-><init>(Landroid/support/v4/graphics/SeslRectReflector$1;)V

    sput-object v0, Landroid/support/v4/graphics/SeslRectReflector;->IMPL:Landroid/support/v4/graphics/SeslRectReflector$RectBaseImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .line 14
    sget-object v0, Landroid/support/v4/graphics/SeslRectReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static scale(Landroid/graphics/Rect;F)V
    .locals 1
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    sget-object v0, Landroid/support/v4/graphics/SeslRectReflector;->IMPL:Landroid/support/v4/graphics/SeslRectReflector$RectBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/SeslRectReflector$RectBaseImpl;->scale(Landroid/graphics/Rect;F)V

    return-void
.end method
