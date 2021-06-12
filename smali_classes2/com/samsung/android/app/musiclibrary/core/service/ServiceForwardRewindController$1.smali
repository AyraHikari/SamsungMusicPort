.class Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 69
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 74
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->access$102(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;I)I

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;Z)Z

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
