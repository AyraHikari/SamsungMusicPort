.class public final Lcom/google/android/gms/internal/zzach;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/gms/internal/zzalf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzalf<",
            "Lcom/google/android/gms/internal/zzacn;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzach;->b:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzalf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzach;->e:Lcom/google/android/gms/internal/zzalf;

    new-instance v0, Lcom/google/android/gms/internal/zzaci;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaci;-><init>(Lcom/google/android/gms/internal/zzach;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzach;->f:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    new-instance v0, Lcom/google/android/gms/internal/zzacj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzacj;-><init>(Lcom/google/android/gms/internal/zzach;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzach;->g:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    new-instance v0, Lcom/google/android/gms/internal/zzack;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzack;-><init>(Lcom/google/android/gms/internal/zzach;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzach;->h:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzach;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzach;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzach;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzach;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzach;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzach;)Lcom/google/android/gms/internal/zzalf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzach;->e:Lcom/google/android/gms/internal/zzalf;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/zzach;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzach;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/zzach;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzach;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/zzach;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzach;->d:Ljava/lang/String;

    return-object p0
.end method
