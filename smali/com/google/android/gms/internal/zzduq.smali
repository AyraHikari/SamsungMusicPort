.class final synthetic Lcom/google/android/gms/internal/zzduq;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/zzdur;->values()[Lcom/google/android/gms/internal/zzdur;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/zzduq;->b:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzduq;->b:[I

    sget-object v2, Lcom/google/android/gms/internal/zzdur;->zzlze:Lcom/google/android/gms/internal/zzdur;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdur;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/zzduq;->b:[I

    sget-object v3, Lcom/google/android/gms/internal/zzdur;->zzlzf:Lcom/google/android/gms/internal/zzdur;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdur;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/google/android/gms/internal/zzduq;->b:[I

    sget-object v3, Lcom/google/android/gms/internal/zzdur;->zzlzg:Lcom/google/android/gms/internal/zzdur;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdur;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {}, Lcom/google/android/gms/internal/zzdus;->values()[Lcom/google/android/gms/internal/zzdus;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/android/gms/internal/zzduq;->a:[I

    :try_start_3
    sget-object v2, Lcom/google/android/gms/internal/zzduq;->a:[I

    sget-object v3, Lcom/google/android/gms/internal/zzdus;->zzlzi:Lcom/google/android/gms/internal/zzdus;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzdus;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/zzduq;->a:[I

    sget-object v2, Lcom/google/android/gms/internal/zzdus;->zzlzj:Lcom/google/android/gms/internal/zzdus;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdus;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
