.class public final Lcom/google/android/gms/internal/zzrr;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzrr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzrs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzrs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzrr;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrr;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrr;->c:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzrr;->d:[Ljava/lang/String;

    return-void
.end method
