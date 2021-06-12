.class public interface abstract Lcom/google/android/gms/common/api/Api$Client;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$AnyClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Client"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
.end method

.method public abstract a(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V
.end method

.method public abstract a(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/IAccountAccessor;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()I
.end method

.method public abstract h()[Lcom/google/android/gms/common/Feature;
.end method
