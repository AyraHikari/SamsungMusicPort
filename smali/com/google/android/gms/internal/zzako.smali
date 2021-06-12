.class final synthetic Lcom/google/android/gms/internal/zzako;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzalf;

.field private final b:Lcom/google/android/gms/internal/zzakg;

.field private final c:Lcom/google/android/gms/internal/zzakv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/internal/zzakg;Lcom/google/android/gms/internal/zzakv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzako;->a:Lcom/google/android/gms/internal/zzalf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzako;->b:Lcom/google/android/gms/internal/zzakg;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzako;->c:Lcom/google/android/gms/internal/zzakv;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzako;->a:Lcom/google/android/gms/internal/zzalf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzako;->b:Lcom/google/android/gms/internal/zzakg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzako;->c:Lcom/google/android/gms/internal/zzakv;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/internal/zzakg;Lcom/google/android/gms/internal/zzakv;)V

    return-void
.end method
