.class public final Lcom/google/android/gms/internal/zzaaz;
.super Lcom/google/android/gms/internal/zzbfm;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field public static final a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzaaz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Z

.field public final c:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaba;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaba;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaaz;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/zzaaz;-><init>(ZLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbfm;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaaz;->b:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaaz;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzaaz;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/zzaaz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaz;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "reporting_urls"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    :try_start_0
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Error grabbing url from json."

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzaaz;

    const-string v2, "enable_protection"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzaaz;-><init>(ZLjava/util/List;)V

    return-object v0
.end method
