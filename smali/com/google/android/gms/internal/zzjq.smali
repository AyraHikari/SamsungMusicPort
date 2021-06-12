.class public final Lcom/google/android/gms/internal/zzjq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:[Lcom/google/android/gms/ads/AdSize;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/R$styleable;->AdsAttrs:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/gms/R$styleable;->AdsAttrs_adSize:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget v0, Lcom/google/android/gms/R$styleable;->AdsAttrs_adSizes:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_0

    if-nez v2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzjq;->a(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/zzjq;->a:[Lcom/google/android/gms/ads/AdSize;

    goto :goto_1

    :cond_0
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjq;->a(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;

    move-result-object p2

    goto :goto_0

    :goto_1
    sget p2, Lcom/google/android/gms/R$styleable;->AdsAttrs_adUnitId:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjq;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzjq;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required XML attribute \"adUnitId\" was missing."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz v1, :cond_3

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required XML attribute \"adSize\" was missing."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/lang/String;)[Lcom/google/android/gms/ads/AdSize;
    .locals 10

    const-string v0, "\\s*,\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_e

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "^(\\d+|FULL_WIDTH)\\s*[xX]\\s*(\\d+|AUTO_HEIGHT)$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "[xX]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x1

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    :try_start_0
    const-string v7, "FULL_WIDTH"

    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, -0x1

    goto :goto_1

    :cond_0
    aget-object v7, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    :goto_1
    const-string v8, "AUTO_HEIGHT"

    aget-object v9, v5, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v4, -0x2

    goto :goto_2

    :cond_1
    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    :goto_2
    new-instance v5, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v5, v7, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v5, v1, v3

    goto/16 :goto_4

    :catch_0
    nop

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not parse XML attribute \"adSize\": "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_3
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const-string v5, "BANNER"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->a:Lcom/google/android/gms/ads/AdSize;

    aput-object v4, v1, v3

    goto/16 :goto_4

    :cond_4
    const-string v5, "LARGE_BANNER"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->c:Lcom/google/android/gms/ads/AdSize;

    aput-object v4, v1, v3

    goto :goto_4

    :cond_5
    const-string v5, "FULL_BANNER"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->b:Lcom/google/android/gms/ads/AdSize;

    aput-object v4, v1, v3

    goto :goto_4

    :cond_6
    const-string v5, "LEADERBOARD"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->d:Lcom/google/android/gms/ads/AdSize;

    aput-object v4, v1, v3

    goto :goto_4

    :cond_7
    const-string v5, "MEDIUM_RECTANGLE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->e:Lcom/google/android/gms/ads/AdSize;

    aput-object v4, v1, v3

    goto :goto_4

    :cond_8
    const-string v5, "SMART_BANNER"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->g:Lcom/google/android/gms/ads/AdSize;

    aput-object v4, v1, v3

    goto :goto_4

    :cond_9
    const-string v5, "WIDE_SKYSCRAPER"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->f:Lcom/google/android/gms/ads/AdSize;

    aput-object v4, v1, v3

    goto :goto_4

    :cond_a
    const-string v5, "FLUID"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->h:Lcom/google/android/gms/ads/AdSize;

    aput-object v4, v1, v3

    goto :goto_4

    :cond_b
    const-string v5, "ICON"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v4, Lcom/google/android/gms/ads/AdSize;->i:Lcom/google/android/gms/ads/AdSize;

    aput-object v4, v1, v3

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not parse XML attribute \"adSize\": "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_5
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    array-length v0, v1

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not parse XML attribute \"adSize\": "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :cond_f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)[Lcom/google/android/gms/ads/AdSize;
    .locals 1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzjq;->a:[Lcom/google/android/gms/ads/AdSize;

    array-length p1, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The adSizes XML attribute is only allowed on PublisherAdViews."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzjq;->a:[Lcom/google/android/gms/ads/AdSize;

    return-object p1
.end method
