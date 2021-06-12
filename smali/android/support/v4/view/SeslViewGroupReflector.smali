.class public Landroid/support/v4/view/SeslViewGroupReflector;
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
        Landroid/support/v4/view/SeslViewGroupReflector$ViewGroupApi21Impl;,
        Landroid/support/v4/view/SeslViewGroupReflector$ViewGroupBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/SeslViewGroupReflector$ViewGroupBaseImpl;

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

    .line 14
    const-class v0, Landroid/view/ViewGroup;

    sput-object v0, Landroid/support/v4/view/SeslViewGroupReflector;->mClass:Ljava/lang/Class;

    .line 32
    new-instance v0, Landroid/support/v4/view/SeslViewGroupReflector$ViewGroupApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/view/SeslViewGroupReflector$ViewGroupApi21Impl;-><init>(Landroid/support/v4/view/SeslViewGroupReflector$1;)V

    sput-object v0, Landroid/support/v4/view/SeslViewGroupReflector;->IMPL:Landroid/support/v4/view/SeslViewGroupReflector$ViewGroupBaseImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .line 13
    sget-object v0, Landroid/support/v4/view/SeslViewGroupReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static resolvePadding(Landroid/view/ViewGroup;)V
    .locals 1

    .line 41
    sget-object v0, Landroid/support/v4/view/SeslViewGroupReflector;->IMPL:Landroid/support/v4/view/SeslViewGroupReflector$ViewGroupBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/SeslViewGroupReflector$ViewGroupBaseImpl;->resolvePadding(Landroid/view/ViewGroup;)V

    return-void
.end method
