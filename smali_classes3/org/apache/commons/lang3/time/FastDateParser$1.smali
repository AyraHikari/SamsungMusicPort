.class final Lorg/apache/commons/lang3/time/FastDateParser$1;
.super Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 730
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/time/FastDateParser$NumberStrategy;-><init>(I)V

    return-void
.end method


# virtual methods
.method a(Lorg/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 1

    .line 736
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_0

    .line 738
    invoke-static {p1, p3}, Lorg/apache/commons/lang3/time/FastDateParser;->access$300(Lorg/apache/commons/lang3/time/FastDateParser;I)I

    move-result p3

    :cond_0
    const/4 p1, 0x1

    .line 740
    invoke-virtual {p2, p1, p3}, Ljava/util/Calendar;->set(II)V

    return-void
.end method
