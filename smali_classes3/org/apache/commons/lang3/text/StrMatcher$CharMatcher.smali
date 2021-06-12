.class final Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;
.super Lorg/apache/commons/lang3/text/StrMatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/text/StrMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharMatcher"
.end annotation


# instance fields
.field private final a:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .line 319
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/StrMatcher;-><init>()V

    .line 320
    iput-char p1, p0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;->a:C

    return-void
.end method


# virtual methods
.method public a([CIII)I
    .locals 0

    .line 334
    iget-char p3, p0, Lorg/apache/commons/lang3/text/StrMatcher$CharMatcher;->a:C

    aget-char p1, p1, p2

    if-ne p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
