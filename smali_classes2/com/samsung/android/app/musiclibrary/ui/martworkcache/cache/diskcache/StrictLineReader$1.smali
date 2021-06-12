.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader$1;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;->a()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;I)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 155
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader$1;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader$1;->buf:[B

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader$1;->count:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader$1;->count:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader$1;->count:I

    .line 157
    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader$1;->buf:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader$1;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/diskcache/StrictLineReader;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
