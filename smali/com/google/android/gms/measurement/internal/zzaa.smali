.class public final Lcom/google/android/gms/measurement/internal/zzaa;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zzaa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzac;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzac;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->a:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzaa;)Landroid/os/Bundle;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->a:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    return v0
.end method

.method final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Landroid/os/Bundle;
    .locals 2

    .line 17
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzaa;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method final b(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method final c(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Lcom/google/android/gms/measurement/internal/zzaa;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzaa;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result p2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaa;->b()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 8
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 9
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;I)V

    return-void
.end method
