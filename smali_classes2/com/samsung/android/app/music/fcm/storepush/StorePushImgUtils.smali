.class public Lcom/samsung/android/app/music/fcm/storepush/StorePushImgUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StorePushImgUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static downloadImg(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "StorePushImgUtils"

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadImg url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 41
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v3

    :catch_0
    move-exception v2

    const-string v3, "StorePushImgUtils"

    const-string v4, "Throwable caught in image bitmap download for Uri: %s"

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "StorePushImgUtils"

    const-string v4, "Exception in image bitmap download for Uri: %s"

    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "StorePushImgUtils"

    const-string v4, "Malformed URL Exception in image bitmap download for Uri: %s"

    .line 57
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    .line 58
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-static {v3, p0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v3, "StorePushImgUtils"

    const-string v4, "Unknown Host Exception in image bitmap download for Uri: %s"

    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    .line 54
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-static {v3, p0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v2

    const-string v3, "StorePushImgUtils"

    const-string v4, "Out of Memory Error in image bitmap download for Uri: %s"

    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    .line 50
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {v3, p0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "StorePushImgUtils"

    const-string v0, "getBitmap >> uri is null"

    .line 29
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/fcm/storepush/StorePushImgUtils;->downloadImg(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getPixelsFromDensityAndDp(II)I
    .locals 0

    mul-int p0, p0, p1

    .line 71
    div-int/lit16 p0, p0, 0xa0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method

.method public static resizeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_1

    .line 77
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 78
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 79
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 80
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p0, v1, :cond_0

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 83
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int v0, v0, p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    const/4 v1, 0x1

    .line 86
    :try_start_0
    invoke-static {p1, p0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object p1

    :cond_1
    return-object p1
.end method
