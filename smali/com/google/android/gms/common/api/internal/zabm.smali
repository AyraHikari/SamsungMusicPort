.class final Lcom/google/android/gms/common/api/internal/zabm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabm;->a:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabm;->a:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;->a:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->a(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zabn;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zabn;-><init>(Lcom/google/android/gms/common/api/internal/zabm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
