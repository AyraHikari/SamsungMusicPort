.class public final Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;
.super Lcom/google/android/gms/common/internal/IGmsCallbacks$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation


# instance fields
.field private zzcv:Lcom/google/android/gms/common/internal/BaseGmsClient;

.field private final zzcw:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;I)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/internal/BaseGmsClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/IGmsCallbacks$zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcv:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 3
    iput p2, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcw:I

    return-void
.end method


# virtual methods
.method public final onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcv:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const-string v1, "onPostInitComplete can be called only once per call to getRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcv:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget v1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcw:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcv:Lcom/google/android/gms/common/internal/BaseGmsClient;

    return-void
.end method

.method public final zza(ILandroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    const-string p1, "GmsClient"

    const-string p2, "received deprecated onAccountValidationComplete callback, ignoring"

    .line 5
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final zza(ILandroid/os/IBinder;Lcom/google/android/gms/common/internal/zzb;)V
    .locals 2
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/common/internal/zzb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcv:Lcom/google/android/gms/common/internal/BaseGmsClient;

    const-string v1, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->zzcv:Lcom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a(Lcom/google/android/gms/common/internal/BaseGmsClient;Lcom/google/android/gms/common/internal/zzb;)V

    .line 16
    iget-object p3, p3, Lcom/google/android/gms/common/internal/zzb;->a:Landroid/os/Bundle;

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/BaseGmsClient$zzd;->onPostInitComplete(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method
