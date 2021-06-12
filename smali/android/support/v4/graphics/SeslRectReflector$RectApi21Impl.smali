.class Landroid/support/v4/graphics/SeslRectReflector$RectApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/graphics/SeslRectReflector$RectBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/SeslRectReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RectApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/graphics/SeslRectReflector$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/graphics/SeslRectReflector$RectApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public scale(Landroid/graphics/Rect;F)V
    .locals 6
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    invoke-static {}, Landroid/support/v4/graphics/SeslRectReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "scale"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
