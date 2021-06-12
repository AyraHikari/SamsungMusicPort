.class public Lcom/mz/common/MZUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x7d0

.field public static b:I = 0x5dc


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 140
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    const-string v0, "#%06X"

    const/4 v1, 0x1

    .line 188
    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0xffffff

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    .line 132
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "[.]"

    const-string v1, "_"

    .line 319
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 320
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "SetPreference  "

    .line 321
    invoke-static {v1}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "filename : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endtime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mz/common/MzLog;->b(Ljava/lang/String;)V

    const-string p2, "Search_of_endtime_float"

    const/4 v1, 0x0

    .line 324
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 325
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 326
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 327
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 222
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 226
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 228
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    .line 232
    :goto_0
    array-length v4, v1

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 234
    new-instance v4, Ljava/io/File;

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 236
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 239
    :cond_1
    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 240
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 241
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 242
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    :cond_3
    :goto_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 252
    invoke-static {}, Lcom/mz/common/MZUtils;->c()Ljava/lang/String;

    move-result-object v1

    const-string v3, "User-Agent"

    .line 253
    invoke-virtual {p1, v3, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget v1, Lcom/mz/common/MZUtils;->a:I

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 255
    sget v1, Lcom/mz/common/MZUtils;->b:I

    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 256
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 257
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v3, 0x1000

    invoke-direct {v1, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 259
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 260
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, p1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 262
    invoke-static {v1, v4}, Lcom/mz/common/MZUtils;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 263
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 265
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 267
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result p4

    if-nez p4, :cond_5

    .line 271
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p4, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 273
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V

    if-eqz p5, :cond_4

    const-string p1, ""

    .line 274
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 275
    invoke-static {p0, p2, p5}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 277
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p4, 0x5

    const/4 p5, 0x7

    .line 278
    invoke-virtual {p1, p4, p5}, Ljava/util/Calendar;->add(II)V

    .line 279
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/mz/common/MZUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 283
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 290
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 285
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    .line 292
    iput p0, v0, Landroid/os/Message;->arg1:I

    .line 293
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_3
    return-void

    .line 289
    :goto_4
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 290
    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    throw p0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 299
    new-array v0, v0, [B

    .line 301
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 302
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 59
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "[.]"

    const-string v1, "_"

    .line 307
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Search_of_endtime_float"

    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v2, 0x0

    .line 309
    invoke-interface {p0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 310
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v2, 0x3e8

    mul-long p0, p0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .line 331
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    .line 332
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mz/common/MZUtils;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Android MezzoSDKVer=2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
