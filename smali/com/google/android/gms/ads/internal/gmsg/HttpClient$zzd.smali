.class final Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/gmsg/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzd"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->b:I

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->b:I

    return v0
.end method

.method public final c()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->d:Ljava/lang/String;

    return-object v0
.end method
