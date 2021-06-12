.class Landroid/support/v4/graphics/SeslPaintReflector$PaintApi21Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/graphics/SeslPaintReflector$PaintBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/SeslPaintReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaintApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/graphics/SeslPaintReflector$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/support/v4/graphics/SeslPaintReflector$PaintApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getHCTStrokeWidth(Landroid/graphics/Paint;)F
    .locals 4
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    invoke-static {}, Landroid/support/v4/graphics/SeslPaintReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getHCTStrokeWidth"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 27
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 28
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
