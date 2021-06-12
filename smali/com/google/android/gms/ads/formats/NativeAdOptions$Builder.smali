.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Lcom/google/android/gms/ads/VideoOptions;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->a:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->b:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->c:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->e:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->b:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->e:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Lcom/google/android/gms/ads/VideoOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->d:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->b:I

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->d:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->a:Z

    return-object p0
.end method

.method public final a()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;Lcom/google/android/gms/ads/formats/zza;)V

    return-object v0
.end method

.method public final b(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->e:I

    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->c:Z

    return-object p0
.end method
