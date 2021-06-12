.class public Lorg/apache/commons/lang3/builder/ToStringBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static volatile a:Lorg/apache/commons/lang3/builder/ToStringStyle;


# instance fields
.field private final b:Ljava/lang/StringBuffer;

.field private final c:Ljava/lang/Object;

.field private final d:Lorg/apache/commons/lang3/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/commons/lang3/builder/ToStringStyle;

    sput-object v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->a:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)V
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 254
    invoke-static {}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->d()Lorg/apache/commons/lang3/builder/ToStringStyle;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    .line 257
    new-instance p3, Ljava/lang/StringBuffer;

    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 259
    :cond_1
    iput-object p3, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b:Ljava/lang/StringBuffer;

    .line 260
    iput-object p2, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->d:Lorg/apache/commons/lang3/builder/ToStringStyle;

    .line 261
    iput-object p1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->c:Ljava/lang/Object;

    .line 263
    invoke-virtual {p2, p3, p1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .locals 0

    .line 165
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/builder/ReflectionToStringBuilder;->a(Ljava/lang/Object;Lorg/apache/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d()Lorg/apache/commons/lang3/builder/ToStringStyle;
    .locals 1

    .line 117
    sget-object v0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->a:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/ToStringBuilder;
    .locals 3

    .line 848
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->d:Lorg/apache/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1022
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/lang/StringBuffer;
    .locals 1

    .line 1031
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->b:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public g()Lorg/apache/commons/lang3/builder/ToStringStyle;
    .locals 1

    .line 1043
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->d:Lorg/apache/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1078
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1058
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1059
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->f()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->g()Lorg/apache/commons/lang3/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1061
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/builder/ToStringBuilder;->d:Lorg/apache/commons/lang3/builder/ToStringStyle;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->f()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->e()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 1063
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->f()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
