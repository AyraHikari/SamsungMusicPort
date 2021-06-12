.class public final Lcom/google/firebase/dynamiclinks/internal/zzc;
.super Lcom/google/android/gms/common/api/GoogleApi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/GoogleApi<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/firebase/dynamiclinks/internal/zze;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/firebase/dynamiclinks/internal/zze;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/firebase/dynamiclinks/internal/zzc;->b:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 4
    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/zzd;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/firebase/dynamiclinks/internal/zzc;->c:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "DynamicLinks.API"

    sget-object v2, Lcom/google/firebase/dynamiclinks/internal/zzc;->c:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sget-object v3, Lcom/google/firebase/dynamiclinks/internal/zzc;->b:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v0, Lcom/google/firebase/dynamiclinks/internal/zzc;->d:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/firebase/dynamiclinks/internal/zzc;->d:Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/common/api/GoogleApi$Settings;->a:Lcom/google/android/gms/common/api/GoogleApi$Settings;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/GoogleApi;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/GoogleApi$Settings;)V

    return-void
.end method
