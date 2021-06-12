.class public final Lcom/google/android/gms/internal/zznt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzns;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/zznu;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zznu;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zznu;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznt;->b:Lcom/google/android/gms/internal/zznu;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznt;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/zznu;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zznt;->b:Lcom/google/android/gms/internal/zznu;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/zzns;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zznt;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zznt;->b:Lcom/google/android/gms/internal/zznu;

    iget-object v1, p0, Lcom/google/android/gms/internal/zznt;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzns;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/google/android/gms/internal/zznu;->a(Lcom/google/android/gms/internal/zzns;J[Ljava/lang/String;)Z

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zznt;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/zznt;->b:Lcom/google/android/gms/internal/zznu;

    if-nez v0, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/zznu;->a(J)Lcom/google/android/gms/internal/zzns;

    move-result-object p3

    :goto_1
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
