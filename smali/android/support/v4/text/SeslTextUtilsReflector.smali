.class public Landroid/support/v4/text/SeslTextUtilsReflector;
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
        Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsApi24Impl;,
        Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsApi21Impl;,
        Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsBaseImpl;

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

    .line 17
    const-class v0, Landroid/text/TextUtils;

    sput-object v0, Landroid/support/v4/text/SeslTextUtilsReflector;->mClass:Ljava/lang/Class;

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 57
    new-instance v0, Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsApi24Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsApi24Impl;-><init>(Landroid/support/v4/text/SeslTextUtilsReflector$1;)V

    sput-object v0, Landroid/support/v4/text/SeslTextUtilsReflector;->IMPL:Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsBaseImpl;

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsApi21Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsApi21Impl;-><init>(Landroid/support/v4/text/SeslTextUtilsReflector$1;)V

    sput-object v0, Landroid/support/v4/text/SeslTextUtilsReflector;->IMPL:Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsBaseImpl;

    :goto_0
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
    sget-object v0, Landroid/support/v4/text/SeslTextUtilsReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 1

    .line 72
    sget-object v0, Landroid/support/v4/text/SeslTextUtilsReflector;->IMPL:Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsBaseImpl;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsBaseImpl;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object p0

    return-object p0
.end method
