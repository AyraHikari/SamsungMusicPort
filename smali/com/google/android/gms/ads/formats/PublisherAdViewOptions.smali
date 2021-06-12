.class public final Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Z

.field private final c:Lcom/google/android/gms/internal/zzkx;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/formats/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZLandroid/os/IBinder;)V
    .locals 0
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->b:Z

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/zzky;->zzg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzkx;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->c:Lcom/google/android/gms/internal/zzkx;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->b:Z

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/zzkx;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->c:Lcom/google/android/gms/internal/zzkx;

    return-object v0
.end method
