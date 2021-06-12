.class Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/SeslResourcesReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourcesApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/res/SeslResourcesReflector$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompatibilityInfo(Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-static {}, Landroid/support/v4/content/res/SeslResourcesReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getCompatibilityInfo"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.content.res.CompatibilityInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
