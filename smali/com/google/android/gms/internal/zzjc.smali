.class public final Lcom/google/android/gms/internal/zzjc;
.super Lcom/google/android/gms/internal/zzfjm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfjm<",
        "Lcom/google/android/gms/internal/zzjc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[J

.field public c:Lcom/google/android/gms/internal/zzjb;

.field public d:Lcom/google/android/gms/internal/zzja;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfjm;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjc;->a:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/zzfjv;->zzpnq:[J

    iput-object v1, p0, Lcom/google/android/gms/internal/zzjc;->b:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjc;->c:Lcom/google/android/gms/internal/zzjb;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjc;->d:Lcom/google/android/gms/internal/zzja;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzpnc:Lcom/google/android/gms/internal/zzfjo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzjc;->zzpfd:I

    return-void
.end method
