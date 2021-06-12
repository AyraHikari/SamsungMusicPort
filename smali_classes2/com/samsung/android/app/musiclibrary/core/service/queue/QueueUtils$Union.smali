.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Union;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Union"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getRepeat(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getShuffle(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static getToggleMode(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const-string p0, "toggleUnionMode but current mode is abnormal."

    .line 726
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getUnionModeByRepeat(II)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getUnionModeByShuffle(II)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
