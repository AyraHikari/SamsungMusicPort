.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Long;

.field public static final b:Ljava/lang/Long;

.field public static final c:Ljava/lang/Long;

.field public static final d:Ljava/lang/Integer;

.field public static final e:Ljava/lang/Integer;

.field public static final f:Ljava/lang/Integer;

.field public static final g:Ljava/lang/Short;

.field public static final h:Ljava/lang/Short;

.field public static final i:Ljava/lang/Short;

.field public static final j:Ljava/lang/Byte;

.field public static final k:Ljava/lang/Byte;

.field public static final l:Ljava/lang/Byte;

.field public static final m:Ljava/lang/Double;

.field public static final n:Ljava/lang/Double;

.field public static final o:Ljava/lang/Double;

.field public static final p:Ljava/lang/Float;

.field public static final q:Ljava/lang/Float;

.field public static final r:Ljava/lang/Float;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, 0x0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->a:Ljava/lang/Long;

    const-wide/16 v0, 0x1

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->b:Ljava/lang/Long;

    const-wide/16 v0, -0x1

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->c:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang3/math/NumberUtils;->d:Ljava/lang/Integer;

    const/4 v1, 0x1

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang3/math/NumberUtils;->e:Ljava/lang/Integer;

    const/4 v2, -0x1

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->f:Ljava/lang/Integer;

    .line 47
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->g:Ljava/lang/Short;

    .line 49
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->h:Ljava/lang/Short;

    .line 51
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->i:Ljava/lang/Short;

    .line 53
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->j:Ljava/lang/Byte;

    .line 55
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->k:Ljava/lang/Byte;

    .line 57
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->l:Ljava/lang/Byte;

    const-wide/16 v0, 0x0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->m:Ljava/lang/Double;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->n:Ljava/lang/Double;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 63
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->o:Ljava/lang/Double;

    const/4 v0, 0x0

    .line 65
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->p:Ljava/lang/Float;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->q:Ljava/lang/Float;

    const/high16 v0, -0x40800000    # -1.0f

    .line 69
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->r:Ljava/lang/Float;

    return-void
.end method

.method public static a(BB)I
    .locals 0

    sub-int/2addr p0, p1

    return p0
.end method

.method public static a(II)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(JJ)I
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static a(SS)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
