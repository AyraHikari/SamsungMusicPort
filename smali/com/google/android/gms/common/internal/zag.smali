.class final Lcom/google/android/gms/common/internal/zag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zag;->a:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zag;->a:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
