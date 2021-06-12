.class public abstract Lorg/apache/commons/lang3/text/translate/CodePointTranslator;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 38
    invoke-virtual {p0, p1, p3}, Lorg/apache/commons/lang3/text/translate/CodePointTranslator;->a(ILjava/io/Writer;)Z

    move-result p1

    return p1
.end method

.method public abstract a(ILjava/io/Writer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
