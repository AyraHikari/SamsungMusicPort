.class public final Lcom/google/android/gms/ads/internal/zzaq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/zzafo;)Landroid/view/View;
    .locals 2
    .param p0    # Lcom/google/android/gms/internal/zzafo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "AdState is null"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzaq;->b(Lcom/google/android/gms/internal/zzafo;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/zzafo;->b:Lcom/google/android/gms/internal/zzanh;

    if-eqz p0, :cond_1

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    throw v0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/zzafo;->o:Lcom/google/android/gms/internal/zzva;

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzva;->getView()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_4

    const-string p0, "View in mediation adapter is null."

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Could not get View from mediation adapter."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static a(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/internal/zzvm;Lcom/google/android/gms/ads/internal/zzab;)Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .locals 1
    .param p0    # Lcom/google/android/gms/internal/zzvj;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/internal/zzvm;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzvj;",
            "Lcom/google/android/gms/internal/zzvm;",
            "Lcom/google/android/gms/ads/internal/zzab;",
            ")",
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/internal/zzav;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/ads/internal/zzav;-><init>(Lcom/google/android/gms/internal/zzvj;Lcom/google/android/gms/ads/internal/zzab;Lcom/google/android/gms/internal/zzvm;)V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzpq;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzaq;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzpq;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "Bitmap is null. Returning empty string"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const-string v0, "data:image/png;base64,"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method static a(Lcom/google/android/gms/internal/zzpq;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/gms/internal/zzpq;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const-string p0, "Image is null. Returning empty string"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzpq;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Unable to get image uri. Trying data uri next"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzaq;->b(Lcom/google/android/gms/internal/zzpq;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/zzaq;->b(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzanh;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzaq;->b(Lcom/google/android/gms/internal/zzanh;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzuo;Ljava/util/concurrent/CountDownLatch;)Z
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    const/4 v2, 0x0

    const/4 v8, 0x0

    if-eqz v0, :cond_8

    :try_start_0
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_0

    const-string v0, "AdWebView is null"

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v1, Lcom/google/android/gms/internal/zzuo;->b:Lcom/google/android/gms/internal/zzuh;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzuh;->p:Ljava/util/List;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v4

    const-string v5, "/nativeExpressAssetsLoaded"

    new-instance v6, Lcom/google/android/gms/ads/internal/zzat;

    invoke-direct {v6, v7}, Lcom/google/android/gms/ads/internal/zzat;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v4

    const-string v5, "/nativeExpressAssetsLoadingFailed"

    new-instance v6, Lcom/google/android/gms/ads/internal/zzau;

    invoke-direct {v6, v7}, Lcom/google/android/gms/ads/internal/zzau;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    iget-object v4, v1, Lcom/google/android/gms/internal/zzuo;->c:Lcom/google/android/gms/internal/zzva;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzva;->zzme()Lcom/google/android/gms/internal/zzvj;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/internal/zzuo;->c:Lcom/google/android/gms/internal/zzva;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzva;->zzmf()Lcom/google/android/gms/internal/zzvm;

    move-result-object v5

    const-string v6, "2"

    invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v4, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/zzoj;

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvj;->getHeadline()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvj;->getImages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvj;->getBody()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvj;->zzjs()Lcom/google/android/gms/internal/zzpq;

    move-result-object v13

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvj;->getCallToAction()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvj;->getStarRating()D

    move-result-wide v15

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvj;->getStore()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvj;->getPrice()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvj;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const/16 v21, 0x0

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvj;->zzml()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvj;->zzml()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    :cond_2
    move-object/from16 v22, v2

    invoke-interface {v4}, Lcom/google/android/gms/internal/zzvj;->zzjx()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v23

    const/16 v24, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v24}, Lcom/google/android/gms/internal/zzoj;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzpq;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzog;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzll;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/zzuo;->b:Lcom/google/android/gms/internal/zzuh;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzuh;->o:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/ads/internal/zzar;

    invoke-direct {v5, v3, v2, v0}, Lcom/google/android/gms/ads/internal/zzar;-><init>(Lcom/google/android/gms/internal/zzoj;Ljava/lang/String;Lcom/google/android/gms/internal/zzanh;)V

    :goto_1
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/zzani;->a(Lcom/google/android/gms/internal/zzanm;)V

    goto :goto_2

    :cond_3
    const-string v4, "1"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/zzol;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvm;->getHeadline()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvm;->getImages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvm;->getBody()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvm;->zzjz()Lcom/google/android/gms/internal/zzpq;

    move-result-object v13

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvm;->getCallToAction()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvm;->getAdvertiser()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvm;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    const/16 v18, 0x0

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvm;->zzml()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvm;->zzml()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    :cond_4
    move-object/from16 v19, v2

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvm;->zzjx()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v20

    const/16 v21, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v21}, Lcom/google/android/gms/internal/zzol;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzpq;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzog;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzll;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/zzuo;->b:Lcom/google/android/gms/internal/zzuh;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzuh;->o:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/ads/internal/zzas;

    invoke-direct {v5, v3, v2, v0}, Lcom/google/android/gms/ads/internal/zzas;-><init>(Lcom/google/android/gms/internal/zzol;Ljava/lang/String;Lcom/google/android/gms/internal/zzanh;)V

    goto :goto_1

    :goto_2
    iget-object v2, v1, Lcom/google/android/gms/internal/zzuo;->b:Lcom/google/android/gms/internal/zzuh;

    iget-object v3, v2, Lcom/google/android/gms/internal/zzuh;->m:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzuo;->b:Lcom/google/android/gms/internal/zzuh;

    iget-object v2, v1, Lcom/google/android/gms/internal/zzuh;->n:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzanh;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v1, "text/html"

    const-string v2, "UTF-8"

    invoke-interface {v0, v3, v1, v2}, Lcom/google/android/gms/internal/zzanh;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const-string v0, "No matching template id and mapper"

    goto/16 :goto_0

    :cond_7
    :goto_4
    const-string v0, "No template ids present in mediation response"

    goto/16 :goto_0

    :cond_8
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "Unable to invoke load assets"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    if-nez v8, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_9
    return v8
.end method

.method private static b(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzpq;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    instance-of v0, p0, Landroid/os/IBinder;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/os/IBinder;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzpr;->zzk(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzpq;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Lcom/google/android/gms/internal/zzpq;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzpq;->zzjr()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Drawable is null. Returning empty string"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/zzn;->zzx(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    const-string p0, "Drawable is not an instance of BitmapDrawable. Returning empty string"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_1
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/zzaq;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, "Unable to get drawable. Returning empty string"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method private static b(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "image"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/zzaq;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_2
    const-string v2, "Invalid type. An image type extra should return a bitmap"

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    const-string v2, "Invalid asset type. Bitmap should be returned only for image type"

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    :goto_3
    return-object v0
.end method

.method private static b(Lcom/google/android/gms/internal/zzanh;)V
    .locals 1

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzanh;->G()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/zzafo;)Z
    .locals 1
    .param p0    # Lcom/google/android/gms/internal/zzafo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzafo;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzafo;->n:Lcom/google/android/gms/internal/zzuh;

    iget-object p0, p0, Lcom/google/android/gms/internal/zzuh;->m:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
