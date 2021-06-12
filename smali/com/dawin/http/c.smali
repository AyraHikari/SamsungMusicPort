.class public Lcom/dawin/http/c;
.super Ljava/lang/Object;


# static fields
.field private static a:I = 0xbb8


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Lcom/dawin/http/d;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%%%%%%%%%%%%%%%%%%%%%%%%% User agent!! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/dawin/a/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REQUEST URL with saved UID : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const-string p1, "GET"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    sget v2, Lcom/dawin/http/c;->a:I

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v2, Lcom/dawin/http/c;->a:I

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "User-Agent"

    sget-object v3, Lcom/dawin/a/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x6a4

    if-ne p3, v2, :cond_1

    :try_start_1
    const-string v2, "Referer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://sdk.dawin.tv/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/dawin/a/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    invoke-static {p2}, Lcom/dawin/util/CommonUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Cookie"

    invoke-virtual {p0, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "utf-8"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v5, 0x8

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    new-instance v2, Lcom/dawin/http/d;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/dawin/http/d;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    const/16 v4, 0x12e

    const/16 v5, 0x12d

    if-eq v0, v3, :cond_4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-eq v0, v5, :cond_4

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    if-ne v0, v4, :cond_5

    :cond_4
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const-string v3, "set-cookie"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-static {p2, v0}, Lcom/dawin/util/CommonUtils;->a(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {p2}, Lcom/dawin/util/CommonUtils;->e(Landroid/content/Context;)V

    :cond_5
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    if-eq p2, v5, :cond_6

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    if-ne p2, v4, :cond_b

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Redirect : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Location"

    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    new-instance p2, Ljava/net/URL;

    const-string p3, "Location"

    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    :goto_3
    instance-of p2, p0, Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_7

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_7
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    instance-of p3, p0, Ljava/net/HttpURLConnection;

    if-eqz p3, :cond_9

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    if-eq p3, v5, :cond_8

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    if-ne p3, v4, :cond_9

    :cond_8
    new-instance p3, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    const-string v3, "Location"

    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {p3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    move-object p3, p0

    const/4 p0, 0x1

    goto :goto_4

    :cond_9
    move-object p3, p0

    const/4 p0, 0x0

    :goto_4
    if-nez p0, :cond_a

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    new-instance p0, Lcom/dawin/http/d;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const-string p2, ""

    invoke-direct {p0, p1, p2}, Lcom/dawin/http/d;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :cond_a
    move-object p0, p3

    goto :goto_3

    :catch_2
    move-exception p0

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_b
    move-object p0, v2

    goto :goto_6

    :catch_3
    move-exception p0

    move-object v0, v2

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :goto_6
    return-object p0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/dawin/http/c;->a:I

    return-void
.end method
