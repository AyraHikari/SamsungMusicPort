.class public final Lcom/google/android/gms/internal/zzlr;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzlr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzls;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzls;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlr;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzlr;->b:I

    return-void
.end method
