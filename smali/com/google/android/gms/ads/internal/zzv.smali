.class public final Lcom/google/android/gms/ads/internal/zzv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/internal/zzanf;

.field public final b:Lcom/google/android/gms/internal/zzamc;

.field public final c:Lcom/google/android/gms/internal/zzafc;

.field public final d:Lcom/google/android/gms/internal/zzix;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzanf;Lcom/google/android/gms/internal/zzamc;Lcom/google/android/gms/internal/zzafc;Lcom/google/android/gms/internal/zzix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzv;->a:Lcom/google/android/gms/internal/zzanf;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzv;->b:Lcom/google/android/gms/internal/zzamc;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzv;->c:Lcom/google/android/gms/internal/zzafc;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzv;->d:Lcom/google/android/gms/internal/zzix;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/zzv;
    .locals 5

    new-instance v0, Lcom/google/android/gms/ads/internal/zzv;

    new-instance v1, Lcom/google/android/gms/internal/zzamu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzamu;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzamh;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzamh;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/zzaew;

    new-instance v4, Lcom/google/android/gms/internal/zzaex;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzaex;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/zzaew;-><init>(Lcom/google/android/gms/internal/zzafd;)V

    new-instance v4, Lcom/google/android/gms/internal/zzix;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzix;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/zzv;-><init>(Lcom/google/android/gms/internal/zzanf;Lcom/google/android/gms/internal/zzamc;Lcom/google/android/gms/internal/zzafc;Lcom/google/android/gms/internal/zzix;)V

    return-object v0
.end method
