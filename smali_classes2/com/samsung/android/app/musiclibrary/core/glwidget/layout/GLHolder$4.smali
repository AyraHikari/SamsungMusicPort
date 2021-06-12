.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 352
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 372
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$700(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;II)V

    goto :goto_0

    .line 366
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$600(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    goto :goto_0

    .line 363
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$500(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    goto :goto_0

    .line 360
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$400(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    goto :goto_0

    .line 357
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;I)V

    goto :goto_0

    .line 354
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
