.class final synthetic Lcom/google/android/gms/internal/zzwk;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field private static synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/google/ads/AdRequest$ErrorCode;->values()[Lcom/google/ads/AdRequest$ErrorCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/zzwk;->a:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzwk;->a:[I

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v2}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/zzwk;->a:[I

    sget-object v3, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v3}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/google/android/gms/internal/zzwk;->a:[I

    sget-object v4, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v4}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/google/android/gms/internal/zzwk;->a:[I

    sget-object v4, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-virtual {v4}, Lcom/google/ads/AdRequest$ErrorCode;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/google/ads/AdRequest$Gender;->values()[Lcom/google/ads/AdRequest$Gender;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/google/android/gms/internal/zzwk;->b:[I

    :try_start_4
    sget-object v3, Lcom/google/android/gms/internal/zzwk;->b:[I

    sget-object v4, Lcom/google/ads/AdRequest$Gender;->FEMALE:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v4}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/zzwk;->b:[I

    sget-object v3, Lcom/google/ads/AdRequest$Gender;->MALE:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v3}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/google/android/gms/internal/zzwk;->b:[I

    sget-object v1, Lcom/google/ads/AdRequest$Gender;->UNKNOWN:Lcom/google/ads/AdRequest$Gender;

    invoke-virtual {v1}, Lcom/google/ads/AdRequest$Gender;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
