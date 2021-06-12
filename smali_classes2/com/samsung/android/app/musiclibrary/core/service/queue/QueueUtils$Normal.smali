.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Normal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Normal"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getNextPosition(II)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    if-ge p1, p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static getPrevPosition(II)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 p0, p1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p0, p0, -0x1

    :goto_0
    return p0
.end method

.method static isEndOfPosition(II)Z
    .locals 1

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
