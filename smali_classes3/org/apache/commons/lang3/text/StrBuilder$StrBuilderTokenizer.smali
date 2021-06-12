.class Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;
.super Lorg/apache/commons/lang3/text/StrTokenizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderTokenizer"
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/commons/lang3/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/apache/commons/lang3/text/StrBuilder;)V
    .locals 0

    .line 2956
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->a:Lorg/apache/commons/lang3/text/StrBuilder;

    .line 2957
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrTokenizer;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([CII)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2964
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->a:Lorg/apache/commons/lang3/text/StrBuilder;

    iget-object p1, p1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 p2, 0x0

    iget-object p3, p0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->a:Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p3}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result p3

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->a([CII)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 2966
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrTokenizer;->a([CII)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
