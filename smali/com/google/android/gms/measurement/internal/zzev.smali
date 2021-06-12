.class final Lcom/google/android/gms/measurement/internal/zzev;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/common/util/Clock;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzev;->a:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->a:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->b:J

    return-void
.end method

.method public final a(J)Z
    .locals 3

    .line 9
    iget-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzev;->b:J

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_0

    return v0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzev;->a:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzev;->b:J

    sub-long/2addr p1, v1

    const-wide/32 v1, 0x36ee80

    cmp-long p1, p1, v1

    if-ltz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzev;->b:J

    return-void
.end method
