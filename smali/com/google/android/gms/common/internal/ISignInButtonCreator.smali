.class public interface abstract Lcom/google/android/gms/common/internal/ISignInButtonCreator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract newSignInButton(Lcom/google/android/gms/dynamic/IObjectWrapper;II)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract newSignInButtonFromConfig(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/common/internal/SignInButtonConfig;)Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
