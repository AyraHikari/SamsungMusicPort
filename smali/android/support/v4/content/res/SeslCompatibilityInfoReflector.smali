.class public Landroid/support/v4/content/res/SeslCompatibilityInfoReflector;
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
        Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoApi21Impl;,
        Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoBaseImpl;

.field private static final mClassName:Ljava/lang/String; = "android.content.res.CompatibilityInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoApi21Impl;-><init>(Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$1;)V

    sput-object v0, Landroid/support/v4/content/res/SeslCompatibilityInfoReflector;->IMPL:Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoBaseImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getField_applicationScale(Landroid/content/res/Resources;)F
    .locals 1
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    sget-object v0, Landroid/support/v4/content/res/SeslCompatibilityInfoReflector;->IMPL:Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoBaseImpl;->getField_applicationScale(Landroid/content/res/Resources;)F

    move-result p0

    return p0
.end method
