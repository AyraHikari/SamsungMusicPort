.class public Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory$StringBodyConverter;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "TransportGsonConverterFactory"


# instance fields
.field private b:Lretrofit2/Converter$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 29
    invoke-static {}, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;->a()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->a(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;->b:Lretrofit2/Converter$Factory;

    return-void
.end method

.method public static a()Lcom/google/gson/Gson;
    .locals 2

    .line 33
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory$1;

    invoke-direct {v1}, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->a(Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->a()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;->b:Lretrofit2/Converter$Factory;

    invoke-virtual {v0, p1, p2, p3}, Lretrofit2/Converter$Factory;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    throw p1
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestBodyConverter type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory$2;-><init>(Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;)V

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory$2;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object p1, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;->a:Ljava/lang/String;

    const-string p2, "requestBodyConverter String"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance p1, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory$StringBodyConverter;

    invoke-direct {p1}, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory$StringBodyConverter;-><init>()V

    return-object p1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;->b:Lretrofit2/Converter$Factory;

    .line 73
    invoke-virtual {v0, p1, p2, p3, p4}, Lretrofit2/Converter$Factory;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;->b:Lretrofit2/Converter$Factory;

    invoke-virtual {v0, p1, p2, p3}, Lretrofit2/Converter$Factory;->b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;

    move-result-object p1

    return-object p1
.end method
