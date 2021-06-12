.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils$Repeat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Repeat"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getToggleMode(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const-string p0, "toggleRepeatMode but current mode is abnormal."

    .line 580
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueUtils;->printLog(Ljava/lang/String;)V

    return v0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
