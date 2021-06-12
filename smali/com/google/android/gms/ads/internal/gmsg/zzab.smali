.class public final Lcom/google/android/gms/ads/internal/gmsg/zzab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/zzaog;",
        ":",
        "Lcom/google/android/gms/internal/zzaoh;",
        ":",
        "Lcom/google/android/gms/internal/zzaou;",
        ":",
        "Lcom/google/android/gms/internal/zzaow;",
        ":",
        "Lcom/google/android/gms/internal/zzaoy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/zzcv;

.field private c:Lcom/google/android/gms/internal/zzakd;

.field private d:Lcom/google/android/gms/ads/internal/overlay/zzq;

.field private e:Lcom/google/android/gms/internal/zzje;

.field private f:Lcom/google/android/gms/ads/internal/overlay/zzn;

.field private g:Lcom/google/android/gms/ads/internal/gmsg/zzb;

.field private h:Lcom/google/android/gms/ads/internal/zzw;

.field private i:Lcom/google/android/gms/internal/zzwr;

.field private j:Lcom/google/android/gms/internal/zzanh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->j:Lcom/google/android/gms/internal/zzanh;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->c:Lcom/google/android/gms/internal/zzakd;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->b:Lcom/google/android/gms/internal/zzcv;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->d:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->e:Lcom/google/android/gms/internal/zzje;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->g:Lcom/google/android/gms/ads/internal/gmsg/zzb;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->h:Lcom/google/android/gms/ads/internal/zzw;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->i:Lcom/google/android/gms/internal/zzwr;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->f:Lcom/google/android/gms/ads/internal/overlay/zzn;

    return-void
.end method

.method private final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->i:Lcom/google/android/gms/internal/zzwr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->i:Lcom/google/android/gms/internal/zzwr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzwr;->a(Z)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "p"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaht;->b()I

    move-result p0

    return p0

    :cond_0
    const-string v0, "l"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaht;->a()I

    move-result p0

    return p0

    :cond_1
    const-string v0, "c"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->g()Lcom/google/android/gms/internal/zzaht;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaht;->c()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 9

    check-cast p1, Lcom/google/android/gms/internal/zzaog;

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzafi;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string p1, "Action missing from an open GMSG."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->h:Lcom/google/android/gms/ads/internal/zzw;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->h:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzw;->b()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/zzab;->h:Lcom/google/android/gms/ads/internal/zzw;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzw;->a(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "expand"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzaoh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaoh;->x()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Cannot expand WebView that is already expanded."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/gmsg/zzab;->a(Z)V

    check-cast p1, Lcom/google/android/gms/internal/zzaou;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/zzab;->a(Ljava/util/Map;)Z

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/zzab;->b(Ljava/util/Map;)I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/zzaou;->a(ZI)V

    return-void

    :cond_3
    const-string v2, "webapp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v3}, Lcom/google/android/gms/ads/internal/gmsg/zzab;->a(Z)V

    if-eqz v0, :cond_4

    check-cast p1, Lcom/google/android/gms/internal/zzaou;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/zzab;->a(Ljava/util/Map;)Z

    move-result v1

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/zzab;->b(Ljava/util/Map;)I

    move-result p2

    invoke-interface {p1, v1, p2, v0}, Lcom/google/android/gms/internal/zzaou;->a(ZILjava/lang/String;)V

    return-void

    :cond_4
    check-cast p1, Lcom/google/android/gms/internal/zzaou;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/zzab;->a(Ljava/util/Map;)Z

    move-result v0

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/gmsg/zzab;->b(Ljava/util/Map;)I

    move-result v1

    const-string v2, "html"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "baseurl"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/google/android/gms/internal/zzaou;->a(ZILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v2, "app"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    const-string v1, "true"

    const-string v5, "system_browser"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/gmsg/zzab;->a(Z)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaog;->getContext()Landroid/content/Context;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "Destination url cannot be empty."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void

    :cond_6
    new-instance v0, Lcom/google/android/gms/ads/internal/gmsg/zzac;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaog;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/zzaow;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaow;->w()Lcom/google/android/gms/internal/zzcv;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/zzaoy;

    if-eqz v3, :cond_7

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/gmsg/zzac;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Landroid/view/View;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/gmsg/zzac;->a(Ljava/util/Map;)Landroid/content/Intent;

    move-result-object p2

    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/zzaou;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {v0, p2}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzaou;->a(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    return-void

    :cond_7
    throw v4

    :cond_8
    invoke-direct {p0, v2}, Lcom/google/android/gms/ads/internal/gmsg/zzab;->a(Z)V

    const-string v1, "intent_url"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    :try_start_1
    invoke-static {v1, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Error parsing the url: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaog;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, p1

    check-cast v6, Lcom/google/android/gms/internal/zzaow;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzaow;->w()Lcom/google/android/gms/internal/zzcv;

    move-result-object v6

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/zzaoy;

    if-eqz v7, :cond_b

    check-cast v7, Landroid/view/View;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaog;->d()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v5, v6, v3, v7, v8}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_2

    :cond_b
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v5

    const-string v6, "Error occurred while adding signals."

    invoke-static {v6, v5}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v6

    const-string v7, "OpenGmsgHandler.onGmsg"

    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_2
    :try_start_3
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v5

    goto :goto_4

    :catch_3
    move-exception v5

    const-string v6, "Error parsing the uri: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_c
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v3

    const-string v6, "OpenGmsgHandler.onGmsg"

    invoke-virtual {v3, v5, v6}, Lcom/google/android/gms/internal/zzaft;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_d
    :goto_4
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_e
    if-eqz v2, :cond_f

    check-cast p1, Lcom/google/android/gms/internal/zzaou;

    new-instance p2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-direct {p2, v2}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzaou;->a(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    return-void

    :cond_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaog;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/zzaow;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaow;->w()Lcom/google/android/gms/internal/zzcv;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/zzaoy;

    if-eqz v3, :cond_10

    check-cast v3, Landroid/view/View;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaog;->d()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzcv;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_10
    throw v4

    :cond_11
    :goto_5
    move-object v3, v0

    check-cast p1, Lcom/google/android/gms/internal/zzaou;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string v1, "i"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const-string v1, "m"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const-string v1, "p"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const-string v1, "c"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    const-string v1, "f"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    const-string v1, "e"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzaou;->a(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    return-void
.end method
