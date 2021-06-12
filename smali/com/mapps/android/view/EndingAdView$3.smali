.class Lcom/mapps/android/view/EndingAdView$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/EndingAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$3;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 552
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    .line 556
    iget v0, p1, Landroid/os/Message;->what:I

    .line 557
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$3;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 v1, -0xc8

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    .line 559
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
