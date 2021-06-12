.class final Lcom/google/android/gms/internal/zzaix;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzakg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzakg<",
        "Ljava/lang/Throwable;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzajb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaiv;Lcom/google/android/gms/internal/zzajb;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaix;->a:Lcom/google/android/gms/internal/zzajb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzakv;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "Error occurred while dispatching http response in getter."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    const-string v1, "HttpGetter.deliverResponse.1"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaix;->a:Lcom/google/android/gms/internal/zzajb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzajb;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object p1

    return-object p1
.end method
