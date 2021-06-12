.class public Lorg/apache/commons/lang3/NotImplementedException;
.super Ljava/lang/UnsupportedOperationException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1332ccdL


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/NotImplementedException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 90
    iput-object p2, p0, Lorg/apache/commons/lang3/NotImplementedException;->code:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/NotImplementedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    iput-object p3, p0, Lorg/apache/commons/lang3/NotImplementedException;->code:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/NotImplementedException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    .line 102
    iput-object p2, p0, Lorg/apache/commons/lang3/NotImplementedException;->code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/apache/commons/lang3/NotImplementedException;->code:Ljava/lang/String;

    return-object v0
.end method
