.class public final Lcom/google/android/gms/internal/zzabz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field public a:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public b:Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Landroid/location/Location;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public e:Lcom/google/android/gms/internal/zzacy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public h:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public i:Lcom/google/android/gms/internal/zzaat;

.field public j:Lcom/google/android/gms/internal/zzaco;

.field public k:Lorg/json/JSONObject;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabz;->k:Lorg/json/JSONObject;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabz;->c:Ljava/util/List;

    return-void
.end method
