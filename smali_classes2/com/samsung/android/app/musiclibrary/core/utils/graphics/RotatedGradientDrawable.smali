.class public final Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;,
        Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Companion;

.field public static final DEBUG_GRADIENT:Z = false

# The value of this static final field might be set in the static constructor
.field private static final LOG_TAG:Ljava/lang/String; = "RotatedGradientDrawable"


# instance fields
.field private angle:F

.field private final colors:[I

.field private debugPaint:Landroid/graphics/Paint;

.field private final myBounds:Landroid/graphics/Rect;

.field private needShaderRebuild:Z

.field private final paint:Landroid/graphics/Paint;

.field private final positions:[F

.field private shader:Landroid/graphics/Shader;

.field private startingCorner:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->Companion:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Companion;

    const-string v0, "RotatedGradientDrawable"

    .line 165
    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([I[FF)V
    .locals 1

    const-string v0, "colors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->colors:[I

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->positions:[F

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->myBounds:Landroid/graphics/Rect;

    .line 12
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;->LB:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->startingCorner:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    .line 40
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->setAngle(F)V

    .line 49
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->paint:Landroid/graphics/Paint;

    .line 56
    new-instance p1, Landroid/graphics/Shader;

    invoke-direct {p1}, Landroid/graphics/Shader;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->shader:Landroid/graphics/Shader;

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->needShaderRebuild:Z

    return-void
.end method

.method public static final synthetic access$getLOG_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 9
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final compareFloats(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 89
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3089705f    # 1.0E-9f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final getBetta()D
    .locals 4

    .line 75
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->angle:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->compareFloats(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->angle:F

    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    double-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->compareFloats(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->angle:F

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    double-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->compareFloats(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->angle:F

    const-wide v1, 0x4012d97c7f3321d2L    # 4.71238898038469

    double-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->compareFloats(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->startingCorner:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 85
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    const-wide v0, 0x4015fdbbe9bba775L    # 5.497787143782138

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->angle:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_1
    const-wide v0, 0x400f6a7a2955385eL    # 3.9269908169872414

    .line 84
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->angle:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_2
    const-wide v0, 0x4002d97c7f3321d2L    # 2.356194490192345

    .line 83
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->angle:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    goto :goto_0

    :pswitch_3
    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 82
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->angle:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
    :goto_1
    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final getGradientEndPoint()Lkotlin/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->myBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->myBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->getBetta()D

    move-result-wide v2

    .line 62
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "angle is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->angle:F

    invoke-direct {p0, v6}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->radiansToAngle(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", betta is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-float v6, v2

    invoke-direct {p0, v6}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->radiansToAngle(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    mul-int v0, v0, v0

    mul-int v1, v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 67
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    .line 69
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->angle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    double-to-float v2, v2

    .line 70
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->angle:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double v0, v0, v3

    double-to-float v0, v0

    .line 71
    new-instance v1, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final getGradientStartPoint()Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->startingCorner:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 105
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->myBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->myBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :pswitch_1
    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->myBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->myBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 103
    :pswitch_2
    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->myBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->myBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :pswitch_3
    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->myBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->myBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->Companion:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Companion;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final getPaint()Landroid/graphics/Paint;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->requestShader()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private final radiansToAngle(F)Ljava/lang/String;
    .locals 6

    .line 43
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0xb4

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    array-length p1, v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String.format(format, *args)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final requestShader()Landroid/graphics/Shader;
    .locals 10

    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->needShaderRebuild:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->needShaderRebuild:Z

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->getGradientStartPoint()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->getGradientEndPoint()Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v6

    .line 96
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->colors:[I

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->positions:[F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    check-cast v0, Landroid/graphics/Shader;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->shader:Landroid/graphics/Shader;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->shader:Landroid/graphics/Shader;

    return-object v0
.end method

.method private static synthetic shader$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->myBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final getAngle()F
    .locals 1

    .line 14
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->angle:F

    return v0
.end method

.method public final getColors()[I
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->colors:[I

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final getPositions()[F
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->positions:[F

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->myBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->needShaderRebuild:Z

    .line 121
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->needShaderRebuild:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->myBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setAngle(F)V
    .locals 7

    .line 16
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting angle to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->radiansToAngle(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->needShaderRebuild:Z

    :goto_0
    const/4 v0, 0x0

    int-to-float v0, v0

    const-wide v1, 0x401921fb54442d18L    # 6.283185307179586

    cmpg-float v3, p1, v0

    if-gez v3, :cond_0

    double-to-float v0, v1

    add-float/2addr p1, v0

    goto :goto_0

    :cond_0
    :goto_1
    float-to-double v3, p1

    cmpl-double v5, v3, v1

    if-lez v5, :cond_1

    double-to-float v3, v1

    sub-float/2addr p1, v3

    goto :goto_1

    :cond_1
    const-wide v1, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_2

    cmpg-double v0, v3, v1

    if-gez v0, :cond_2

    .line 26
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;->LT:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    goto :goto_2

    :cond_2
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    cmpg-double v0, v1, v3

    if-gtz v0, :cond_3

    cmpg-double v0, v3, v5

    if-gez v0, :cond_3

    .line 28
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;->RT:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    goto :goto_2

    :cond_3
    cmpg-double v0, v5, v3

    if-gtz v0, :cond_4

    const-wide v0, 0x4012d97c7f3321d2L    # 4.71238898038469

    cmpg-double v0, v3, v0

    if-gez v0, :cond_4

    .line 30
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;->RB:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    goto :goto_2

    .line 32
    :cond_4
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;->LB:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    .line 25
    :goto_2
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->startingCorner:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    .line 34
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "normalized angle is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->radiansToAngle(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " startingCorner is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->startingCorner:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable$Corners;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->angle:F

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RotatedGradientDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
