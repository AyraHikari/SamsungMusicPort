.class public Landroid/support/v4/content/res/SeslResourcesReflector;
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
        Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesApi21Impl;,
        Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesBaseImpl;

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

    .line 16
    const-class v0, Landroid/content/res/Resources;

    sput-object v0, Landroid/support/v4/content/res/SeslResourcesReflector;->mClass:Ljava/lang/Class;

    .line 38
    new-instance v0, Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesApi21Impl;-><init>(Landroid/support/v4/content/res/SeslResourcesReflector$1;)V

    sput-object v0, Landroid/support/v4/content/res/SeslResourcesReflector;->IMPL:Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesBaseImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .line 15
    sget-object v0, Landroid/support/v4/content/res/SeslResourcesReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method static getCompatibilityInfo(Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 48
    sget-object v0, Landroid/support/v4/content/res/SeslResourcesReflector;->IMPL:Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesBaseImpl;->getCompatibilityInfo(Landroid/content/res/Resources;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
