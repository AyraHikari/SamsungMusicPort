.class final Lcom/google/android/gms/internal/zzajt;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzajs;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzajt;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzakc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzakc;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzajt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzakc;->a(Ljava/lang/String;)V

    return-void
.end method
