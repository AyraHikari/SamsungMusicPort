.class public final Lcom/google/android/gms/measurement/internal/zzap;
.super Lcom/google/android/gms/measurement/internal/zzcp;


# instance fields
.field private a:C

.field private b:J

.field private c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/measurement/internal/zzar;

.field private final e:Lcom/google/android/gms/measurement/internal/zzar;

.field private final f:Lcom/google/android/gms/measurement/internal/zzar;

.field private final g:Lcom/google/android/gms/measurement/internal/zzar;

.field private final h:Lcom/google/android/gms/measurement/internal/zzar;

.field private final i:Lcom/google/android/gms/measurement/internal/zzar;

.field private final j:Lcom/google/android/gms/measurement/internal/zzar;

.field private final k:Lcom/google/android/gms/measurement/internal/zzar;

.field private final l:Lcom/google/android/gms/measurement/internal/zzar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzcp;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    const/4 p1, 0x0

    .line 2
    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/zzap;->a:C

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->b:J

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzar;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzap;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->d:Lcom/google/android/gms/measurement/internal/zzar;

    .line 5
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzar;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzap;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->e:Lcom/google/android/gms/measurement/internal/zzar;

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzap;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->f:Lcom/google/android/gms/measurement/internal/zzar;

    .line 7
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzar;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzap;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->g:Lcom/google/android/gms/measurement/internal/zzar;

    .line 8
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzap;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->h:Lcom/google/android/gms/measurement/internal/zzar;

    .line 9
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzar;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzap;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->i:Lcom/google/android/gms/measurement/internal/zzar;

    .line 10
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzar;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzap;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->j:Lcom/google/android/gms/measurement/internal/zzar;

    .line 11
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzar;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzap;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->k:Lcom/google/android/gms/measurement/internal/zzar;

    .line 12
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzar;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p1}, Lcom/google/android/gms/measurement/internal/zzar;-><init>(Lcom/google/android/gms/measurement/internal/zzap;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->l:Lcom/google/android/gms/measurement/internal/zzar;

    return-void
.end method

.method private final D()Ljava/lang/String;
    .locals 1

    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->c:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->c:Ljava/lang/String;

    .line 55
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->c:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzap;)C
    .locals 0

    .line 142
    iget-char p0, p0, Lcom/google/android/gms/measurement/internal/zzap;->a:C

    return p0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzap;C)C
    .locals 0

    .line 143
    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/zzap;->a:C

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzap;J)J
    .locals 0

    .line 145
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzap;->b:J

    return-wide p1
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzas;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(ZLjava/lang/Object;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    .line 81
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 82
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 83
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-nez p0, :cond_2

    .line 85
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
    :cond_2
    move-object p0, p1

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    .line 87
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 88
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_4

    const-string p1, "-"

    goto :goto_0

    :cond_4
    const-string p1, ""

    .line 89
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    int-to-double v4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2b

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr p0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 94
    :cond_5
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_6
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_b

    .line 97
    check-cast p1, Ljava/lang/Throwable;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    if-eqz p0, :cond_7

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    const-class p0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzap;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 101
    const-class v2, Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzap;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    array-length v3, p1

    :goto_2
    if-ge v1, v3, :cond_a

    aget-object v4, p1, v1

    .line 103
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v5

    if-nez v5, :cond_9

    .line 104
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 106
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzap;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const-string p0, ": "

    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 112
    :cond_a
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 113
    :cond_b
    instance-of v0, p1, Lcom/google/android/gms/measurement/internal/zzas;

    if-eqz v0, :cond_c

    .line 114
    check-cast p1, Lcom/google/android/gms/measurement/internal/zzas;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzas;->a(Lcom/google/android/gms/measurement/internal/zzas;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    if-eqz p0, :cond_d

    const-string p0, "-"

    return-object p0

    .line 117
    :cond_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 59
    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/gms/measurement/internal/zzap;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-static {p0, p3}, Lcom/google/android/gms/measurement/internal/zzap;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 61
    invoke-static {p0, p4}, Lcom/google/android/gms/measurement/internal/zzap;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 62
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    .line 64
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    .line 67
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 68
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    .line 71
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 72
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    .line 75
    :cond_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 76
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/zzap;)J
    .locals 2

    .line 144
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->b:J

    return-wide v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 123
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .line 128
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->a()V

    return-void
.end method

.method protected final a(ILjava/lang/String;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzap;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 28
    invoke-static {v0, p4, p5, p6, p7}, Lcom/google/android/gms/measurement/internal/zzap;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzap;->a(ILjava/lang/String;)V

    :cond_0
    if-nez p3, :cond_5

    const/4 p2, 0x5

    if-lt p1, p2, :cond_5

    .line 32
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzap;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbt;->g()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p2

    const/4 p3, 0x6

    if-nez p2, :cond_1

    const-string p1, "Scheduler not set. Not logging error/warn"

    .line 35
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(ILjava/lang/String;)V

    return-void

    .line 37
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzcp;->z()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Scheduler not initialized. Not logging error/warn"

    .line 38
    invoke-virtual {p0, p3, p1}, Lcom/google/android/gms/measurement/internal/zzap;->a(ILjava/lang/String;)V

    return-void

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    :cond_3
    const/16 p3, 0x9

    if-lt p1, p3, :cond_4

    const/16 p1, 0x8

    const/16 v2, 0x8

    goto :goto_0

    :cond_4
    move v2, p1

    .line 45
    :goto_0
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaq;

    move-object v0, p1

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzap;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method

.method protected final a(I)Z
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzap;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 129
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .line 130
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->c()V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 131
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->d()V

    return-void
.end method

.method protected final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Lcom/google/android/gms/measurement/internal/zzar;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->e:Lcom/google/android/gms/measurement/internal/zzar;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/measurement/internal/zzar;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->f:Lcom/google/android/gms/measurement/internal/zzar;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/measurement/internal/zzar;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->g:Lcom/google/android/gms/measurement/internal/zzar;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/measurement/internal/zzar;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->h:Lcom/google/android/gms/measurement/internal/zzar;

    return-object v0
.end method

.method public final j_()Lcom/google/android/gms/measurement/internal/zzar;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->d:Lcom/google/android/gms/measurement/internal/zzar;

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/measurement/internal/zzar;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->i:Lcom/google/android/gms/measurement/internal/zzar;

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->l()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Landroid/content/Context;
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 137
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->u()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method public final v()Lcom/google/android/gms/measurement/internal/zzar;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->j:Lcom/google/android/gms/measurement/internal/zzar;

    return-object v0
.end method

.method public final w()Lcom/google/android/gms/measurement/internal/zzar;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->k:Lcom/google/android/gms/measurement/internal/zzar;

    return-object v0
.end method

.method public final x()Lcom/google/android/gms/measurement/internal/zzar;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzap;->l:Lcom/google/android/gms/measurement/internal/zzar;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 4

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->b:Lcom/google/android/gms/measurement/internal/zzbe;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbe;->a()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzba;->a:Landroid/util/Pair;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
