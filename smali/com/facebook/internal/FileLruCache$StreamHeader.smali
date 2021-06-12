.class final Lcom/facebook/internal/FileLruCache$StreamHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamHeader"
.end annotation


# static fields
.field private static final HEADER_VERSION:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readHeader(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_2

    .line 425
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 427
    sget-object p0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v0, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    const-string v2, "readHeader: stream.read returned -1 while reading header size"

    invoke-static {p0, v0, v2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    :cond_2
    new-array v2, v3, [B

    .line 437
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 438
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_3

    .line 440
    sget-object p0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v3, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readHeader: stream.read stopped at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " when expected "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-static {p0, v3, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_3
    add-int/2addr v0, v3

    goto :goto_1

    .line 450
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V

    .line 452
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 454
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p0

    .line 455
    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_5

    .line 456
    sget-object v0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    sget-object v2, Lcom/facebook/internal/FileLruCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readHeader: expected JSONObject, got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 456
    invoke-static {v0, v2, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 463
    :cond_5
    check-cast p0, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 465
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static writeHeader(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 406
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 410
    array-length v1, p1

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 411
    array-length v1, p1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 412
    array-length v1, p1

    shr-int/lit8 v0, v1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 414
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
