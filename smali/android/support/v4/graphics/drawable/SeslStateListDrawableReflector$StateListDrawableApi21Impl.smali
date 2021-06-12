.class Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateListDrawableApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 4
    .param p1    # Landroid/graphics/drawable/StateListDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-static {}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getStateCount"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return v2
.end method

.method public getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1    # Landroid/graphics/drawable/StateListDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-static {}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getStateDrawable"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    instance-of p2, p1, Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 44
    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 6
    .param p1    # Landroid/graphics/drawable/StateListDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-static {}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getStateSet"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 55
    instance-of p2, p1, [I

    if-eqz p2, :cond_0

    .line 56
    check-cast p1, [I

    return-object p1

    .line 59
    :cond_0
    new-array p1, v5, [I

    return-object p1
.end method
