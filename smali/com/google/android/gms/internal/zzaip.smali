.class public final Lcom/google/android/gms/internal/zzaip;
.super Lcom/google/android/gms/internal/zzai;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaq;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzai;-><init>(Lcom/google/android/gms/internal/zzaq;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaip;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzv;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzaip;

    new-instance v1, Lcom/google/android/gms/internal/zzar;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzar;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzaip;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaq;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "admob_volley"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/zzv;

    new-instance v2, Lcom/google/android/gms/internal/zzal;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzal;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v2, v0}, Lcom/google/android/gms/internal/zzv;-><init>(Lcom/google/android/gms/internal/zzb;Lcom/google/android/gms/internal/zzm;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzv;->start()V

    return-object p0
.end method
