.class final Lcom/google/android/gms/measurement/internal/zzcn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:J

.field private final synthetic e:Lcom/google/android/gms/measurement/internal/zzbv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzcn;->e:Lcom/google/android/gms/measurement/internal/zzbv;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzcn;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzcn;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzcn;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzcn;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcn;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzcn;->e:Lcom/google/android/gms/measurement/internal/zzbv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zza(Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->o()Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->w()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcn;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdn;)V

    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdn;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcn;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzcn;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzcn;->d:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzdn;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzcn;->e:Lcom/google/android/gms/measurement/internal/zzbv;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzbv;->zza(Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfa;->o()Lcom/google/android/gms/measurement/internal/zzbt;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbt;->w()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzcn;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdn;)V

    return-void
.end method
