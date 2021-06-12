.class public abstract Lcom/google/android/gms/common/api/internal/zab;
.super Ljava/lang/Object;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/api/internal/zab;->a:I

    return-void
.end method

.method static synthetic a(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zab;->b(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Landroid/os/TransactionTooLargeException;

    if-eqz v1, :cond_0

    const-string v1, "TransactionTooLargeException: "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance p0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/common/api/Status;)V
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zaa<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/gms/common/api/internal/zaab;Z)V
    .param p1    # Lcom/google/android/gms/common/api/internal/zaab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/lang/RuntimeException;)V
    .param p1    # Ljava/lang/RuntimeException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
