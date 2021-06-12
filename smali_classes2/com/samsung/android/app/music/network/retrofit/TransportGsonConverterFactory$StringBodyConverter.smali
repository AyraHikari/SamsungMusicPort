.class public Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory$StringBodyConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringBodyConverter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "Ljava/lang/String;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory$StringBodyConverter;->a(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/samsung/android/app/music/network/retrofit/TransportGsonConverterFactory;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/json"

    .line 87
    invoke-static {v0}, Lokhttp3/MediaType;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->a(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method
