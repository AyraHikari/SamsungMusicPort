.class public final Lcom/google/android/gms/internal/zzapa;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field private final c:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzapa;->c:I

    iput p2, p0, Lcom/google/android/gms/internal/zzapa;->b:I

    iput p3, p0, Lcom/google/android/gms/internal/zzapa;->a:I

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/zzapa;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzapa;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/google/android/gms/internal/zzapa;-><init>(III)V

    return-object v0
.end method

.method public static a(II)Lcom/google/android/gms/internal/zzapa;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzapa;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/zzapa;-><init>(III)V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/internal/zzjn;)Lcom/google/android/gms/internal/zzapa;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjn;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/zzapa;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/zzapa;-><init>(III)V

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjn;->j:Z

    if-eqz v0, :cond_1

    new-instance p0, Lcom/google/android/gms/internal/zzapa;

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/internal/zzapa;-><init>(III)V

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjn;->i:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzapa;->a()Lcom/google/android/gms/internal/zzapa;

    move-result-object p0

    return-object p0

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzjn;->g:I

    iget p0, p0, Lcom/google/android/gms/internal/zzjn;->d:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/zzapa;->a(II)Lcom/google/android/gms/internal/zzapa;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/google/android/gms/internal/zzapa;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzapa;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/zzapa;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final c()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzapa;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzapa;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzapa;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzapa;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
