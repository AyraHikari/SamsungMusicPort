.class public final Lcom/google/android/gms/internal/zzaew;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzafc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/zzafd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzafd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaew;->a:Lcom/google/android/gms/internal/zzafd;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzaax;)Lcom/google/android/gms/internal/zzafb;
    .locals 7

    iget-object v0, p3, Lcom/google/android/gms/internal/zzaax;->L:Lcom/google/android/gms/internal/zzaey;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v6, Lcom/google/android/gms/internal/zzaes;

    iget-object v3, p3, Lcom/google/android/gms/internal/zzaax;->L:Lcom/google/android/gms/internal/zzaey;

    iget-object v4, p3, Lcom/google/android/gms/internal/zzaax;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzaew;->a:Lcom/google/android/gms/internal/zzafd;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaes;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzaey;Ljava/lang/String;Lcom/google/android/gms/internal/zzafd;)V

    return-object v6
.end method
