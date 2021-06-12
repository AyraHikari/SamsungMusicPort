.class public Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final a:Ljava/lang/String; = "MusicServerMandatoryQueryInterceptor"

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:I

.field private d:Landroid/content/Context;

.field private e:Lcom/samsung/android/app/music/network/init/StartClientProvider;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->b:Ljava/util/List;

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->b:Ljava/util/List;

    const-string v1, "id"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->b:Ljava/util/List;

    const-string v1, "deviceId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->b:Ljava/util/List;

    const-string v1, "uniqueId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->b:Ljava/util/List;

    const-string v1, "shopId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->b:Ljava/util/List;

    const-string v1, "channelId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->d:Landroid/content/Context;

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/init/StartClientProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->e:Lcom/samsung/android/app/music/network/init/StartClientProvider;

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->c:I

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .line 147
    :try_start_0
    iget v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->c:I

    .line 148
    iget v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->c:I

    const v2, 0xc350

    if-le v0, v2, :cond_0

    .line 149
    iput v1, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->c:I

    .line 151
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "50001"

    return-object v0
.end method

.method private a(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;
    .locals 5

    .line 106
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->q()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "channelId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_1
    const-string v4, "deviceId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_3
    const-string v4, "uniqueId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_4
    const-string v4, "shopId"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string v4, "access_token"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->e:Lcom/samsung/android/app/music/network/init/StartClientProvider;

    invoke-interface {v3}, Lcom/samsung/android/app/music/network/init/StartClientProvider;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->i:Ljava/lang/String;

    .line 132
    iget-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->i:Ljava/lang/String;

    goto :goto_2

    .line 126
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->e:Lcom/samsung/android/app/music/network/init/StartClientProvider;

    invoke-interface {v3}, Lcom/samsung/android/app/music/network/init/StartClientProvider;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->h:Ljava/lang/String;

    .line 127
    iget-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->h:Ljava/lang/String;

    goto :goto_2

    .line 121
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->g:Ljava/lang/String;

    .line 122
    iget-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->g:Ljava/lang/String;

    goto :goto_2

    .line 117
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->f:Ljava/lang/String;

    .line 118
    iget-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->f:Ljava/lang/String;

    goto :goto_2

    .line 114
    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->e:Lcom/samsung/android/app/music/network/init/StartClientProvider;

    invoke-interface {v3}, Lcom/samsung/android/app/music/network/init/StartClientProvider;->d()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_5
    const-string v3, "1"

    .line 137
    :goto_2
    invoke-virtual {p1, v2}, Lokhttp3/HttpUrl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    invoke-virtual {v0, v2}, Lokhttp3/HttpUrl$Builder;->f(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto/16 :goto_0

    .line 141
    :cond_2
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->c()Lokhttp3/HttpUrl;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7391c8a2 -> :sswitch_5
        -0x35d5014f -> :sswitch_4
        -0x118d1b34 -> :sswitch_3
        0xd1b -> :sswitch_2
        0x421cea11 -> :sswitch_1
        0x5720517e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->a()Lokhttp3/Request;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->n()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    sget-object v3, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "param "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5, v2}, Lokhttp3/HttpUrl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    const-string v2, "access_token"

    .line 83
    invoke-virtual {v1, v2}, Lokhttp3/HttpUrl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "access_token"

    .line 85
    invoke-virtual {v0, v2}, Lokhttp3/Request;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    iget-object v2, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->e:Lcom/samsung/android/app/music/network/init/StartClientProvider;

    invoke-interface {v2}, Lcom/samsung/android/app/music/network/init/StartClientProvider;->d()Ljava/lang/String;

    move-result-object v2

    .line 91
    :cond_2
    invoke-virtual {v0}, Lokhttp3/Request;->e()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 92
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->a(Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->a(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "id"

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "deviceId"

    iget-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->f:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "uniqueId"

    iget-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "shopId"

    iget-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->h:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "channelId"

    iget-object v3, p0, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "access_token"

    .line 96
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->a()Lokhttp3/Request;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->n()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    sget-object v3, Lcom/samsung/android/app/music/network/interceptor/MusicServerMandatoryQueryInterceptor;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newParam "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5, v2}, Lokhttp3/HttpUrl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_3
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
