.class Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/feature/SeslFloatingFeatureReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatingFeatureApi21Impl"
.end annotation


# static fields
.field protected static mClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.samsung.android.feature.FloatingFeature"

    .line 26
    sput-object v0, Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureApi21Impl;->mClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInstance()Ljava/lang/Object;
    .locals 4

    .line 35
    sget-object v0, Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureApi21Impl;->mClassName:Ljava/lang/String;

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 37
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureApi21Impl;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 45
    invoke-static {}, Landroid/support/v4/feature/SeslFloatingFeatureReflector;->access$000()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureApi21Impl;->mClassName:Ljava/lang/String;

    const-string v1, "getString"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureApi21Impl;->getInstance()Ljava/lang/Object;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    invoke-static {v1, v0, v2}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 50
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 51
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method
