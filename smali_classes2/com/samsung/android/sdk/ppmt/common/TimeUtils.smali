.class public Lcom/samsung/android/sdk/ppmt/common/TimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JJ)J
    .locals 2

    sub-long/2addr p2, p0

    const-wide/16 v0, 0x3e8

    .line 20
    div-long/2addr p2, v0

    long-to-int p2, p2

    if-gtz p2, :cond_0

    return-wide p0

    .line 25
    :cond_0
    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    .line 26
    invoke-virtual {p3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    int-to-long p2, p2

    mul-long p2, p2, v0

    add-long/2addr p2, p0

    return-wide p2
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1

    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 16
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Calendar;III)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_2

    const/16 v0, 0x18

    if-ge p1, v0, :cond_2

    if-ltz p2, :cond_2

    const/16 v0, 0x3c

    if-ge p2, v0, :cond_2

    if-ltz p3, :cond_2

    if-lt p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    .line 36
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    .line 37
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    .line 38
    invoke-virtual {p0, p1, p3}, Ljava/util/Calendar;->set(II)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method
