.class final Lcom/google/android/gms/measurement/internal/zzch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/zzad;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/zzbv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbv;Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzch;->c:Lcom/google/android/gms/measurement/internal/zzbv;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzch;->a:Lcom/google/android/gms/measurement/internal/zzad;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzch;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzch;->c:Lcom/google/android/gms/measurement/internal/zzbv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zza(Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfa;->k()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzch;->c:Lcom/google/android/gms/measurement/internal/zzbv;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbv;->zza(Lcom/google/android/gms/measurement/internal/zzbv;)Lcom/google/android/gms/measurement/internal/zzfa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzch;->a:Lcom/google/android/gms/measurement/internal/zzad;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzch;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfa;->a(Lcom/google/android/gms/measurement/internal/zzad;Ljava/lang/String;)V

    return-void
.end method
