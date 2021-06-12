.class final Lcom/google/android/gms/internal/measurement/zzuk;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/measurement/zzut;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuk;->b:[B

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuk;->b:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzut;->a([B)Lcom/google/android/gms/internal/measurement/zzut;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzuk;->a:Lcom/google/android/gms/internal/measurement/zzut;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/measurement/zzue;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzuk;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/zzud;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzuk;->a:Lcom/google/android/gms/internal/measurement/zzut;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzut;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzum;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzuk;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzum;-><init>([B)V

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lcom/google/android/gms/internal/measurement/zzut;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzuk;->a:Lcom/google/android/gms/internal/measurement/zzut;

    return-object v0
.end method
