.class public Lorg/simpleframework/xml/convert/ConvertException;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
