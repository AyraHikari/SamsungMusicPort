.class public final Lkotlin/jvm/internal/DoubleCompanionObject;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/jvm/internal/DoubleCompanionObject;

# The value of this static final field might be set in the static constructor
.field private static final b:D = 4.9E-324

# The value of this static final field might be set in the static constructor
.field private static final c:D = 1.7976931348623157E308

# The value of this static final field might be set in the static constructor
.field private static final d:D = Infinity

# The value of this static final field might be set in the static constructor
.field private static final e:D = -Infinity

# The value of this static final field might be set in the static constructor
.field private static final f:D = NaN


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-direct {v0}, Lkotlin/jvm/internal/DoubleCompanionObject;-><init>()V

    sput-object v0, Lkotlin/jvm/internal/DoubleCompanionObject;->a:Lkotlin/jvm/internal/DoubleCompanionObject;

    const-wide/16 v0, 0x1

    .line 9
    sput-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->b:D

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 10
    sput-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->c:D

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 11
    sput-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->d:D

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 12
    sput-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->e:D

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 13
    sput-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->f:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 2

    .line 13
    sget-wide v0, Lkotlin/jvm/internal/DoubleCompanionObject;->f:D

    return-wide v0
.end method
