.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/background/ColorGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;


# instance fields
.field final synthetic b:I

.field final synthetic c:Lkotlin/jvm/functions/Function1;

.field private final d:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "stops"

    const-string v4, "getStops()[F"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method


# virtual methods
.method public a()[F
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;->d:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public a(II)[I
    .locals 9

    .line 230
    iget v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;->b:I

    .line 913
    new-array v0, v0, [I

    .line 914
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 231
    iget-object v3, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;->a()[F

    move-result-object v4

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v3, v4

    if-gez v6, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    cmpl-float v4, v3, v5

    if-lez v4, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_1
    :goto_1
    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-float v4, v4

    int-to-float v5, v5

    sub-float/2addr v5, v4

    mul-float v5, v5, v3

    add-float/2addr v5, v4

    float-to-int v4, v5

    shr-int/lit8 v5, p1, 0x10

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, p2, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-float v5, v5

    int-to-float v6, v6

    sub-float/2addr v6, v5

    mul-float v6, v6, v3

    add-float/2addr v6, v5

    float-to-int v5, v6

    shr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, p2, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-float v6, v6

    int-to-float v7, v7

    sub-float/2addr v7, v6

    mul-float v7, v7, v3

    add-float/2addr v7, v6

    float-to-int v6, v7

    and-int/lit16 v7, p1, 0xff

    and-int/lit16 v8, p2, 0xff

    int-to-float v7, v7

    int-to-float v8, v8

    sub-float/2addr v8, v7

    mul-float v3, v3, v8

    add-float/2addr v3, v7

    float-to-int v3, v3

    .line 922
    invoke-static {v4, v5, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    .line 231
    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
