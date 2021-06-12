.class final synthetic Lcom/google/android/gms/common/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/common/zze;


# direct methods
.method constructor <init>(ZLjava/lang/String;Lcom/google/android/gms/common/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/zzd;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/common/zzd;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/zzd;->c:Lcom/google/android/gms/common/zze;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzd;->a:Z

    iget-object v1, p0, Lcom/google/android/gms/common/zzd;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/zzd;->c:Lcom/google/android/gms/common/zze;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/zzc;->a(ZLjava/lang/String;Lcom/google/android/gms/common/zze;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
