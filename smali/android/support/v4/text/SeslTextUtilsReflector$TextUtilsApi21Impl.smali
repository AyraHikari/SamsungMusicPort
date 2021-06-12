.class Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/SeslTextUtilsReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextUtilsApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/text/SeslTextUtilsReflector$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/text/SeslTextUtilsReflector$TextUtilsApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C
    .locals 8

    .line 26
    invoke-static {}, Landroid/support/v4/text/SeslTextUtilsReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPrefixCharForIndian"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/text/TextPaint;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, [C

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 29
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    aput-object p3, v2, v7

    invoke-static {v1, v0, v2}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    instance-of p2, p1, [C

    if-eqz p2, :cond_0

    .line 31
    check-cast p1, [C

    return-object p1

    .line 34
    :cond_0
    new-array p1, v5, [C

    return-object p1
.end method
