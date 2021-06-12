.class public Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientBasicQueryInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/transport/BasicTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartClientBasicQueryInterceptor"
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientBasicQueryInterceptor;->a:Ljava/util/List;

    .line 128
    sget-object v0, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientBasicQueryInterceptor;->a:Ljava/util/List;

    const-string v1, "deviceId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientBasicQueryInterceptor;->a:Ljava/util/List;

    const-string v1, "uniqueId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientBasicQueryInterceptor;->a:Ljava/util/List;

    const-string v1, "access_token"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientBasicQueryInterceptor;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;
    .locals 6

    .line 149
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->q()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientBasicQueryInterceptor;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    .line 152
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7391c8a2

    if-eq v4, v5, :cond_3

    const v5, -0x118d1b34

    if-eq v4, v5, :cond_2

    const v5, 0x421cea11

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "deviceId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "uniqueId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_3
    const-string v4, "access_token"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 160
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientBasicQueryInterceptor;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 157
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientBasicQueryInterceptor;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 154
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientBasicQueryInterceptor;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 165
    :goto_2
    invoke-virtual {p1, v2}, Lokhttp3/HttpUrl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 166
    invoke-virtual {v0, v2}, Lokhttp3/HttpUrl$Builder;->f(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_0

    .line 169
    :cond_5
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->c()Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->a()Lokhttp3/Request;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    .line 143
    invoke-virtual {v0}, Lokhttp3/Request;->e()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 144
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientBasicQueryInterceptor;->a(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->a(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v0

    .line 145
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
