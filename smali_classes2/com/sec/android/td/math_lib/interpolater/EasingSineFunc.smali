.class public Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/td/math_lib/interpolater/IEasing;


# static fields
.field private static a:Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;
    .locals 1

    .line 8
    sget-object v0, Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;->a:Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;

    invoke-direct {v0}, Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;-><init>()V

    sput-object v0, Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;->a:Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;

    .line 10
    :cond_0
    sget-object v0, Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;->a:Lcom/sec/android/td/math_lib/interpolater/EasingSineFunc;

    return-object v0
.end method


# virtual methods
.method public a(FFFF)F
    .locals 4

    neg-float p3, p3

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    float-to-double v2, p4

    div-double/2addr v0, v2

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    mul-float p3, p3, p1

    add-float/2addr p3, p2

    return p3
.end method
