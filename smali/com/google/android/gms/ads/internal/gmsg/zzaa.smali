.class public final Lcom/google/android/gms/ads/internal/gmsg/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
        "Lcom/google/android/gms/internal/zzanh;",
        ">;"
    }
.end annotation


# static fields
.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/gms/ads/internal/zzw;

.field private final b:Lcom/google/android/gms/internal/zzwr;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "resize"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "playVideo"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "storePicture"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "createCalendarEvent"

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "setOrientationProperties"

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "closeResizedAd"

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static/range {v0 .. v11}, Lcom/google/android/gms/common/util/zze;->zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->a:Lcom/google/android/gms/ads/internal/zzw;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->b:Lcom/google/android/gms/internal/zzwr;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/zzanh;

    const-string v0, "a"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->a:Lcom/google/android/gms/ads/internal/zzw;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->a:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzw;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->a:Lcom/google/android/gms/ads/internal/zzw;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzw;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    const-string p1, "Unknown MRAID command called."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->b:Lcom/google/android/gms/internal/zzwr;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzwr;->a(Z)V

    return-void

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/zzwt;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzwt;-><init>(Lcom/google/android/gms/internal/zzanh;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzwt;->a()V

    return-void

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/zzwo;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzwo;-><init>(Lcom/google/android/gms/internal/zzanh;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzwo;->a()V

    return-void

    :pswitch_3
    new-instance v0, Lcom/google/android/gms/internal/zzwu;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzwu;-><init>(Lcom/google/android/gms/internal/zzanh;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzwu;->a()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzaa;->b:Lcom/google/android/gms/internal/zzwr;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzwr;->a(Ljava/util/Map;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
