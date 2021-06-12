.class Lcom/mapps/android/view/AdView$5;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$5;->this$0:Lcom/mapps/android/view/AdView;

    .line 1062
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3

    .line 1065
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mz/common/network/data/DataNTSSP;

    .line 1066
    iget-object v0, p0, Lcom/mapps/android/view/AdView$5;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$8(Lcom/mapps/android/view/AdView;Z)V

    .line 1067
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 1069
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const-string v1, "5Ssp_imp"

    .line 1071
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1072
    iget-object v1, p0, Lcom/mapps/android/view/AdView$5;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mapps/android/view/AdView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 1075
    :cond_0
    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1076
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const-string v1, "Dsp_imp"

    .line 1077
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1078
    iget-object v1, p0, Lcom/mapps/android/view/AdView$5;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {p1}, Lcom/mz/common/network/data/DataNTSSP;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/mapps/android/view/AdView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    :cond_1
    return-void
.end method
