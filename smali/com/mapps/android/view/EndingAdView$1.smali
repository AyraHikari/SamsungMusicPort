.class Lcom/mapps/android/view/EndingAdView$1;
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
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$1;->this$0:Lcom/mapps/android/view/EndingAdView;

    .line 247
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 250
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$1;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-boolean p1, p1, Lcom/mapps/android/view/EndingAdView;->adInterval:Z

    if-nez p1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$1;->this$0:Lcom/mapps/android/view/EndingAdView;

    const/16 v0, -0x3e8

    invoke-static {p1, v0}, Lcom/mapps/android/view/EndingAdView;->access$0(Lcom/mapps/android/view/EndingAdView;I)V

    return-void

    .line 254
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/EndingAdView$1;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$1;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget v0, v0, Lcom/mapps/android/view/EndingAdView;->media_type:I

    invoke-static {p1, v0}, Lcom/mapps/android/view/EndingAdView;->access$1(Lcom/mapps/android/view/EndingAdView;I)V

    return-void
.end method
