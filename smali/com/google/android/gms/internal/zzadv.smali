.class public final Lcom/google/android/gms/internal/zzadv;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzadv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/android/gms/internal/zzjj;

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzadw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzadw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzadv;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzjj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadv;->b:Lcom/google/android/gms/internal/zzjj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzadv;->c:Ljava/lang/String;

    return-void
.end method
