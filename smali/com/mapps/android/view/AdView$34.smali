.class Lcom/mapps/android/view/AdView$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapps/android/view/AdView$OnSSPAdmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdView;->RotationSSPImage(ILcom/mz/common/network/data/DataNTSSP;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;

.field private final synthetic val$data:Lcom/mz/common/network/data/DataNTSSP;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$34;->this$0:Lcom/mapps/android/view/AdView;

    iput-object p2, p0, Lcom/mapps/android/view/AdView$34;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    .line 1382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSSpAdmState(Lcom/mapps/android/view/AdView$SSPAdmState;)V
    .locals 2

    .line 1386
    sget-object v0, Lcom/mapps/android/view/AdView$SSPAdmState;->VIEW:Lcom/mapps/android/view/AdView$SSPAdmState;

    if-ne p1, v0, :cond_0

    .line 1387
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const-string v0, "4Ssp_imp"

    .line 1388
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1389
    iget-object v0, p0, Lcom/mapps/android/view/AdView$34;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v1, p0, Lcom/mapps/android/view/AdView$34;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mz/common/network/data/DataNTSSP;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mapps/android/view/AdView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1390
    :cond_0
    sget-object v0, Lcom/mapps/android/view/AdView$SSPAdmState;->CLICK:Lcom/mapps/android/view/AdView$SSPAdmState;

    if-ne p1, v0, :cond_1

    .line 1391
    iget-object p1, p0, Lcom/mapps/android/view/AdView$34;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v0, p0, Lcom/mapps/android/view/AdView$34;->val$data:Lcom/mz/common/network/data/DataNTSSP;

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdView;->access$52(Lcom/mapps/android/view/AdView;Lcom/mz/common/network/data/DataNTSSP;)V

    :cond_1
    :goto_0
    return-void
.end method
