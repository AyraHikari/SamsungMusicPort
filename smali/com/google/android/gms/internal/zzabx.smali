.class public final Lcom/google/android/gms/internal/zzabx;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzabx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaby;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaby;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzabx;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabx;->b:Ljava/lang/String;

    return-void
.end method
