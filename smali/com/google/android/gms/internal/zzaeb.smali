.class public final Lcom/google/android/gms/internal/zzaeb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:J

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaed;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaed;->a(Lcom/google/android/gms/internal/zzaed;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaeb;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaed;->b(Lcom/google/android/gms/internal/zzaed;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaeb;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaed;->c(Lcom/google/android/gms/internal/zzaed;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaeb;->b:I

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaed;->d(Lcom/google/android/gms/internal/zzaed;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaeb;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaed;Lcom/google/android/gms/internal/zzaec;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaeb;-><init>(Lcom/google/android/gms/internal/zzaed;)V

    return-void
.end method
