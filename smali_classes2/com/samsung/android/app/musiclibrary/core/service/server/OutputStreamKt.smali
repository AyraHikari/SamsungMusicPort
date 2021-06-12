.class public final Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final writeSuccessHeader(Ljava/io/OutputStream;)V
    .locals 1

    const-string v0, "HTTP/1.1 200 OK"

    .line 11
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "Content-Type: application/octet-stream"

    .line 12
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "Accept-Ranges: bytes"

    .line 13
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "Connection: close"

    .line 14
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, ""

    .line 15
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public static final writeWithNewLine(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
