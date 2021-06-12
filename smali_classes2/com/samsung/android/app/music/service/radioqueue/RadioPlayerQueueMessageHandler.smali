.class final Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "RadioPlayerQueueMessageHandler"

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    iput-object p2, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    return-void
.end method

.method private a(III)V
    .locals 0

    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private a(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 163
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/16 v0, 0x8

    .line 116
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->removeMessages(I)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method a(II)V
    .locals 1

    const/4 v0, 0x4

    .line 142
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->removeMessages(I)V

    .line 144
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method a(IZ)V
    .locals 1

    const/4 v0, 0x2

    .line 96
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->removeMessages(I)V

    .line 97
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->a(III)V

    return-void
.end method

.method a(JI)V
    .locals 1

    const/4 v0, 0x5

    .line 149
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->removeMessages(I)V

    long-to-int p1, p1

    .line 150
    invoke-virtual {p0, v0, p1, p3}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method a(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V
    .locals 2

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->removeMessages(I)V

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method a(Z)V
    .locals 2

    const/4 v0, 0x7

    .line 111
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->removeMessages(I)V

    .line 112
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->a(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method b()V
    .locals 1

    const/4 v0, 0x6

    .line 156
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->removeMessages(I)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 158
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method b(IZ)V
    .locals 1

    const/4 v0, 0x3

    .line 101
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->removeMessages(I)V

    .line 102
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->a(III)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 81
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    invoke-interface {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;->b()V

    goto :goto_0

    .line 66
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    invoke-interface {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;->d()V

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;->a(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;)V

    goto :goto_0

    .line 60
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    invoke-interface {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;->a()V

    goto :goto_0

    .line 57
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;->a(Z)V

    goto :goto_0

    .line 84
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    invoke-interface {p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;->c()V

    goto :goto_0

    .line 72
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;->a(JI)V

    goto :goto_0

    .line 69
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;->a(II)V

    goto :goto_0

    .line 78
    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0, v3, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;->a(IZ)V

    goto :goto_0

    .line 75
    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v0, v3, v1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;->b(IZ)V

    goto :goto_0

    .line 54
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler;->c:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueueMessageHandler$IRadioPlayerQueueMessageCallback;->a(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
