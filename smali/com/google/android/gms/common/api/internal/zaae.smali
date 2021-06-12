.class public Lcom/google/android/gms/common/api/internal/zaae;
.super Lcom/google/android/gms/common/api/internal/zal;


# instance fields
.field private e:Lcom/google/android/gms/common/api/internal/GoogleApiManager;


# virtual methods
.method protected final a(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->e:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->b(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected final b()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaae;->e:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->b()V

    return-void
.end method
