.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Shuffle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shuffle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getNextPosition(Ljava/util/List;I)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)[I"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p0, :cond_2

    .line 618
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 621
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ge p1, v1, :cond_1

    add-int/2addr p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 627
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 628
    new-array v0, v0, [I

    aput p0, v0, v3

    aput p1, v0, v2

    return-object v0

    .line 619
    :cond_2
    :goto_1
    new-array p0, v0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static getPrevPosition(Ljava/util/List;I)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)[I"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p0, :cond_2

    .line 596
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 602
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    .line 605
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 606
    new-array v0, v0, [I

    const/4 v2, 0x0

    aput p0, v0, v2

    aput p1, v0, v1

    return-object v0

    .line 597
    :cond_2
    :goto_1
    new-array p0, v0, [I

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static getToggleMode(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const-string p0, "toggleShuffleMode but current mode is abnormal."

    .line 642
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
