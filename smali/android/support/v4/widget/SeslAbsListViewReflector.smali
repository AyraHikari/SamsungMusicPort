.class public Landroid/support/v4/widget/SeslAbsListViewReflector;
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
        Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewApi21Impl;,
        Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;

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

    .line 18
    const-class v0, Landroid/widget/AbsListView;

    sput-object v0, Landroid/support/v4/widget/SeslAbsListViewReflector;->mClass:Ljava/lang/Class;

    .line 72
    new-instance v0, Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewApi21Impl;-><init>(Landroid/support/v4/widget/SeslAbsListViewReflector$1;)V

    sput-object v0, Landroid/support/v4/widget/SeslAbsListViewReflector;->IMPL:Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .line 17
    sget-object v0, Landroid/support/v4/widget/SeslAbsListViewReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_mEdgeGlowTop(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    sget-object v0, Landroid/support/v4/widget/SeslAbsListViewReflector;->IMPL:Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;->getField_mEdgeGlowTop(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object p0

    return-object p0
.end method

.method public static positionSelector(Landroid/widget/AbsListView;ILandroid/view/View;)V
    .locals 1
    .param p0    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 95
    sget-object v0, Landroid/support/v4/widget/SeslAbsListViewReflector;->IMPL:Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;->positionSelector(Landroid/widget/AbsListView;ILandroid/view/View;)V

    return-void
.end method

.method public static setField_mEdgeGlowBottom(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V
    .locals 1
    .param p0    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 84
    sget-object v0, Landroid/support/v4/widget/SeslAbsListViewReflector;->IMPL:Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;->setField_mEdgeGlowBottom(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V

    return-void
.end method

.method public static setField_mEdgeGlowTop(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V
    .locals 1
    .param p0    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    sget-object v0, Landroid/support/v4/widget/SeslAbsListViewReflector;->IMPL:Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;->setField_mEdgeGlowTop(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V

    return-void
.end method
