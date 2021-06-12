.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$NewAdder;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$LastAdder;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$NextAdder;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$NowAdder;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$FirstAdder;,
        Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$AbsAdder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAdder(ILcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$AbsAdder;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 35
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$LastAdder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$LastAdder;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    return-object p0

    .line 25
    :pswitch_0
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$NextAdder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$NextAdder;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    return-object p0

    .line 23
    :pswitch_1
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$NowAdder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$NowAdder;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    return-object p0

    .line 21
    :pswitch_2
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$FirstAdder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/EnqueueFactory$FirstAdder;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue$PlayerQueueOptions;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
