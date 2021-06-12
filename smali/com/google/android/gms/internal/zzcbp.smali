.class public final Lcom/google/android/gms/internal/zzcbp;
.super Lcom/google/android/gms/internal/zzbfm;


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcbp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcbq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcbq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcbp;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzcbp;->b:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcbp;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcbp;->d:Ljava/lang/String;

    return-void
.end method
